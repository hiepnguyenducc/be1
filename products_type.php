<!-- Products tab & slick -->
<div class="col-md-12">
    <div class="row">
        <div class="products-tabs">
            <!-- tab -->
            <div id="tab1" class="tab-pane active">
                <div class="products-slick" data-nav="#slick-nav-1">
                    <!-- product -->
                    <?php foreach ($getAllProductsNew as $value1): foreach ($getAllProtypes as $value2):
                            if ($value1['type_id'] == $value2['type_id']): ?>

                    <div class="product">
                        <div class="product-img">

                            <img style="height: 200px;" src="./img/<?php echo $value1['image']; ?>" alt="">
                            <div class="product-label">
                                <?php if ($value1['feature'] == 1): ?>
                                <span class="sale">-8%</span>
                                <?php endif; ?>
                                <span class="new">NEW</span>
                            </div>
                        </div>
                        <div class="product-body">
                            <p class="product-category"><?php echo $value2['type_name']; ?></p>
                            <h3 class="product-name"><a href="product.php?id=<?php echo $value1['id'] ?>"><?php echo $value1['name']; ?></a>
                            </h3>
                            <?php if ($value1['feature'] == 1): ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price'] * 0.8); ?>VNĐ<del
                                    class="product-old-price"><?php echo number_format($value1['price']); ?>VNĐ</del>
                            </h4>
                            <?php else: ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price']); ?>VNĐ</h4>
                            <?php endif; ?>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-btns">

                                <form action="index.php" method="post">
                                    <input type="hidden" name="likedId" value="<?php echo $value1['id']; ?>">
                                    <button class="btn badge btn-danger"><i class="fa fa-heart-o"></i>
                                        <?php echo $value1['pLike'] ?></button>
                                </form>

                                <button class="quick-view"><a href="product.php?id=<?php echo $value1['id'] ?>"><i
                                            class="fa fa-eye"></i><span class="tooltipp">quick view</span></a>
                                    <?php echo $value1['product_view'] ?></button>
                            </div>
                        </div>
                        <div class="add-to-cart">
                        <form action="index.php" method="post">
									<input type="hidden" name="cartId" value="<?php echo $value1['id']; ?>">
									<button class="add-to-cart-btn "><i class="fa fa-shopping-cart"></i>
										add to cart</button>
								</form>
                        </div>
                    </div>

                    <?php endif; endforeach; endforeach; ?>

                    <!-- /product -->
                </div>
            </div>
            <!-- /tab -->

            <!-- tab -->
            <div id="tab2" class="tab-pane">
                <div class="products-slick">
                    <!-- product -->
                    <?php $getProductsByTypeId = $Products->getProductsByTypeId(1); foreach ($getProductsByTypeId as $value1): foreach ($getAllProtypes as $value2):
                            if ($value1['type_id'] == $value2['type_id']): ?>
                    <div class="product">
                        <div class="product-img">

                            <img style="height: 200px;" src="./img/<?php echo $value1['image']; ?>" alt="">
                            <div class="product-label">
                                <?php if ($value1['feature'] == 1): ?>
                                <span class="sale">-8%</span>
                                <?php endif; ?>
                                <span class="new">NEW</span>
                            </div>
                        </div>
                        <div class="product-body">
                            <p class="product-category"><?php echo $value2['type_name']; ?></p>
                            <h3 class="product-name"><a href="product.php?id=<?php echo $value1['id'] ?>"><?php echo $value1['name']; ?></a>
                            </h3>
                            <?php if ($value1['feature'] == 1): ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price'] * 0.8); ?>VNĐ<del
                                    class="product-old-price"><?php echo number_format($value1['price']); ?>VNĐ</del>
                            </h4>
                            <?php else: ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price']); ?>VNĐ</h4>
                            <?php endif; ?>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-btns">
                                <form action="index.php" method="post">
                                    <input type="hidden" name="likedId" value="<?php echo $value1['id']; ?>">
                                    <button class="like-btn" data-product-id="<?php echo $value1['id']; ?>">
    <i class="fa fa-heart-o"></i> <?php echo $value1['pLike'] ?>
</button>

                                </form>

                                <button class="quick-view"><a href="product.php?id=<?php echo $value1['id'] ?>"><i
                                            class="fa fa-eye"></i><span class="tooltipp">quick view</span></a>
                                    <?php echo $value1['product_view'] ?></button>
                            </div>
                        </div>
                        <div class="add-to-cart">
                        <form action="index.php" method="post">
									<input type="hidden" name="cartId" value="<?php echo $value1['id']; ?>">
									<button class="add-to-cart-btn "><i class="fa fa-shopping-cart"></i>
										add to cart</button>
								</form>
                        </div>
                    </div>
                    <?php endif; endforeach; endforeach; ?>
                    <!-- /product -->
                </div>
            </div>
            <!-- /tab -->

            <!-- tab -->
            <div id="tab3" class="tab-pane">
                <div class="products-slick">
                    <!-- product -->
                    <?php $getProductsByTypeId = $Products->getProductsByTypeId(2); foreach ($getProductsByTypeId as $value1): foreach ($getAllProtypes as $value2):
                            if ($value1['type_id'] == $value2['type_id']): ?>
                    <div class="product">
                        <div class="product-img">

                            <img style="height: 200px;" src="./img/<?php echo $value1['image']; ?>" alt="">
                            <div class="product-label">
                                <?php if ($value1['feature'] == 1): ?>
                                <span class="sale">-8%</span>
                                <?php endif; ?>
                                <span class="new">NEW</span>
                            </div>
                        </div>
                        <div class="product-body">
                            <p class="product-category"><?php echo $value2['type_name']; ?></p>
                            <h3 class="product-name"><a href="product.php?id=<?php echo $value1['id'] ?>"><?php echo $value1['name']; ?></a>
                            </h3>
                            <?php if ($value1['feature'] == 1): ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price'] * 0.8); ?>VNĐ<del
                                    class="product-old-price"><?php echo number_format($value1['price']); ?>VNĐ</del>
                            </h4>
                            <?php else: ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price']); ?>VNĐ</h4>
                            <?php endif; ?>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-btns">
                                <form action="index.php" method="post">
                                    <input type="hidden" name="likedId" value="<?php echo $value1['id']; ?>">
                                    <button class="btn badge btn-danger"><i class="fa fa-heart-o"></i>
                                        <?php echo $value1['pLike'] ?></button>
                                </form>

                                <button class="quick-view"><a href="product.php?id=<?php echo $value1['id'] ?>"><i
                                            class="fa fa-eye"></i><span class="tooltipp">quick view</span></a>
                                    <?php echo $value1['product_view'] ?></button>
                            </div>
                        </div>
                        <div class="add-to-cart">
                        <form action="index.php" method="post">
									<input type="hidden" name="cartId" value="<?php echo $value1['id']; ?>">
									<button class="add-to-cart-btn "><i class="fa fa-shopping-cart"></i>
										add to cart</button>
								</form>
                        </div>
                    </div>
                    <?php endif; endforeach; endforeach; ?>
                    <!-- /product -->
                </div>
            </div>
            <!-- /tab -->

            <!-- tab -->
            <div id="tab4" class="tab-pane">
                <div class="products-slick">
                    <!-- product -->
                    <?php $getProductsByTypeId = $Products->getProductsByTypeId(3); foreach ($getProductsByTypeId as $value1): foreach ($getAllProtypes as $value2):
                            if ($value1['type_id'] == $value2['type_id']): ?>
                    <div class="product">
                        <div class="product-img">

                            <img style="height: 200px;" src="./img/<?php echo $value1['image']; ?>" alt="">
                            <div class="product-label">
                                <?php if ($value1['feature'] == 1): ?>
                                <span class="sale">-8%</span>
                                <?php endif; ?>
                                <span class="new">NEW</span>
                            </div>
                        </div>
                        <div class="product-body">
                            <p class="product-category"><?php echo $value2['type_name']; ?></p>
                            <h3 class="product-name"><a href="product.php?id=<?php echo $value1['id'] ?>"><?php echo $value1['name']; ?></a>
                            </h3>
                            <?php if ($value1['feature'] == 1): ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price'] * 0.8); ?>VNĐ<del
                                    class="product-old-price"><?php echo number_format($value1['price']); ?>VNĐ</del>
                            </h4>
                            <?php else: ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price']); ?>VNĐ</h4>
                            <?php endif; ?>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-btns">
                                <form action="index.php" method="post">
                                    <input type="hidden" name="likedId" value="<?php echo $value1['id']; ?>">
                                    <button class="btn badge btn-danger"><i class="fa fa-heart-o"></i>
                                        <?php echo $value1['pLike'] ?></button>
                                </form>

                                <button class="quick-view"><a href="product.php?id=<?php echo $value1['id'] ?>"><i
                                            class="fa fa-eye"></i><span class="tooltipp">quick view</span></a>
                                    <?php echo $value1['product_view'] ?></button>
                            </div>
                        </div>
                        <div class="add-to-cart">
                        <form action="index.php" method="post">
									<input type="hidden" name="cartId" value="<?php echo $value1['id']; ?>">
									<button class="add-to-cart-btn "><i class="fa fa-shopping-cart"></i>
										add to cart</button>
								</form>
                        </div>
                    </div>
                    <?php endif; endforeach; endforeach; ?>
                    <!-- /product -->
                </div>
            </div>
            <!-- /tab -->

            <!-- tab -->
            <div id="tab5" class="tab-pane">
                <div class="products-slick">
                    <!-- product -->
                    <?php $getProductsByTypeId = $Products->getProductsByTypeId(4); foreach ($getProductsByTypeId as $value1): foreach ($getAllProtypes as $value2):
                            if ($value1['type_id'] == $value2['type_id']): ?>
                    <div class="product">
                        <div class="product-img">

                            <img style="height: 200px;" src="./img/<?php echo $value1['image']; ?>" alt="">
                            <div class="product-label">
                                <?php if ($value1['feature'] == 1): ?>
                                <span class="sale">-8%</span>
                                <?php endif; ?>
                                <span class="new">NEW</span>
                            </div>
                        </div>
                        <div class="product-body">
                            <p class="product-category"><?php echo $value2['type_name']; ?></p>
                            <h3 class="product-name"><a href="product.php?id=<?php echo $value1['id'] ?>"><?php echo $value1['name']; ?></a>
                            </h3>
                            <?php if ($value1['feature'] == 1): ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price'] * 0.8); ?>VNĐ<del
                                    class="product-old-price"><?php echo number_format($value1['price']); ?>VNĐ</del>
                            </h4>
                            <?php else: ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price']); ?>VNĐ</h4>
                            <?php endif; ?>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-btns">
                                <form action="index.php" method="post">
                                    <input type="hidden" name="likedId" value="<?php echo $value1['id']; ?>">
                                    <button class="btn badge btn-danger"><i class="fa fa-heart-o"></i>
                                        <?php echo $value1['pLike'] ?></button>
                                </form>

                                <button class="quick-view"><a href="product.php?id=<?php echo $value1['id'] ?>"><i
                                            class="fa fa-eye"></i><span class="tooltipp">quick view</span></a>
                                    <?php echo $value1['product_view'] ?></button>
                            </div>
                        </div>
                        <div class="add-to-cart">
                        <form action="index.php" method="post">
									<input type="hidden" name="cartId" value="<?php echo $value1['id']; ?>">
									<button class="add-to-cart-btn "><i class="fa fa-shopping-cart"></i>
										add to cart</button>
								</form>
                        </div>
                    </div>
                    <?php endif; endforeach; endforeach; ?>
                    <!-- /product -->
                </div>
            </div>
            <!-- /tab -->

            <!-- tab -->
            <div id="tab6" class="tab-pane">
                <div class="products-slick">
                    <!-- product -->
                    <?php $getProductsByTypeId = $Products->getProductsByTypeId(5); foreach ($getProductsByTypeId as $value1): foreach ($getAllProtypes as $value2):
                            if ($value1['type_id'] == $value2['type_id']): ?>
                    <div class="product">
                        <div class="product-img">

                            <img style="height: 200px;" src="./img/<?php echo $value1['image']; ?>" alt="">
                            <div class="product-label">
                                <?php if ($value1['feature'] == 1): ?>
                                <span class="sale">-8%</span>
                                <?php endif; ?>
                                <span class="new">NEW</span>
                            </div>
                        </div>
                        <div class="product-body">
                            <p class="product-category"><?php echo $value2['type_name']; ?></p>
                            <h3 class="product-name"><a href="product.php?id=<?php echo $value1['id'] ?>"><?php echo $value1['name']; ?></a>
                            </h3>
                            <?php if ($value1['feature'] == 1): ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price'] * 0.8); ?>VNĐ<del
                                    class="product-old-price"><?php echo number_format($value1['price']); ?>VNĐ</del>
                            </h4>
                            <?php else: ?>
                            <h4 class="product-price"> <?php echo number_format($value1['price']); ?>VNĐ</h4>
                            <?php endif; ?>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-btns">
                                <form action="index.php" method="post">
                                    <input type="hidden" name="likedId" value="<?php echo $value1['id']; ?>">
                                    <button class="btn badge btn-danger"><i class="fa fa-heart-o"></i>
                                        <?php echo $value1['pLike'] ?></button>
                                </form>

                                <button class="quick-view"><a href="product.php?id=<?php echo $value1['id'] ?>"><i
                                            class="fa fa-eye"></i><span class="tooltipp">quick view</span></a>
                                    <?php echo $value1['product_view'] ?></button>
                            </div>
                        </div>
                        <div class="add-to-cart">
                        <form action="index.php" method="post">
									<input type="hidden" name="cartId" value="<?php echo $value1['id']; ?>">
									<button class="add-to-cart-btn "><i class="fa fa-shopping-cart"></i>
										add to cart</button>
								</form>
                        </div>
                    </div>
                    <?php endif; endforeach; endforeach; ?>
                    <!-- /product -->
                </div>
            </div>
            <!-- /tab -->
            <div id="slick-nav-1" class="products-slick-nav"></div>
        </div>
    </div>
</div>



<!-- Products tab & slick -->