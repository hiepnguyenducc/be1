<?php
session_start();
require_once('./Facebook/autoload.php');

$fb = new Facebook\Facebook([
  'app_id' => '1122154469160617',
  'app_secret' => '77b6e2e258b0bac47ab321e7b0e2b63a',
  'default_graph_version' => 'v2.12',
]);

$helper = $fb->getRedirectLoginHelper();

try {
  $accessToken = $helper->getAccessToken();
  if ($accessToken === null) {
    throw new Facebook\Exceptions\FacebookSDKException('Access token is null.');
  }

  $response = $fb->get('/me?fields=id,name,email', $accessToken);
  $me = json_decode($response->getBody(), true);
} catch(Facebook\Exceptions\FacebookResponseException $e) {
  echo 'Graph trả về lỗi: ' . $e->getMessage();
  exit;
} catch(Facebook\Exceptions\FacebookSDKException $e) {
  echo 'Facebook SDK trả về lỗi: ' . $e->getMessage();
  exit;
}

if (!isset($me) || empty($me)) {
  header('HTTP/1.0 401 Unauthorized');
  echo "Lỗi: Không thể lấy thông tin người dùng.";
  exit;
}

echo 'Đã đăng nhập với tên: ' . $me['name'];
echo 'ID: ' . $me['id'];
echo 'Email: ' . $me['email'];
