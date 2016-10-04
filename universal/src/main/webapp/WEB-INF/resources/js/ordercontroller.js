/*var cartApp = angular.module ("addToCartApp", []);

cartApp.controller("addToCartCtrl", function ($scope, $http){

     * retrieveCart method is used to get all cart items at the starting of the application
     
    $scope.retrieveCart = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCartItems(cartId);
        console.log( " inside controller js ");
    };
    
    
    
     * removeItemFromCart method is used to remove a item from the cart
     
    $scope.removeItemFromCart = function (id) {
        $http.put('http://localhost:8080/universal/usercart/cart/removeItem/'+id).success(function (data) {
            $scope.refreshCartItems();
        });
    };


     * addItemToCart method is used to add items into the cart
     
    $scope.addItemToCart = function (id) {
        $http.put('http://localhost:8080/universal/usercart/cart/addItem/'+id).success(function () {
            alert("Item added to the cart!")
        });
    };
   
   
    
     * GrandTotalOfItems method is called on cart page to calculate grand total for the added items
     
    $scope.GrandTotalOfItems = function () {
    	var grandTotal=0;
        console.log( " inside grand total ");
        for (var i=0; i<$scope.cart.cartItems.length; i++) {
            console.log( " inside for loop ");	
            grandTotal+=$scope.cart.cartItems[i].totalPrice;
       }

        return grandTotal;
    };
    
* refreshCartItems method is called by others methods in same controller to refresh the cart

    $scope.refreshCartItems = function () {
        $http.get('http://localhost:8080/universal/usercart/cart/refreshCart/'+$scope.cartId).success(function (data) {
        	console.log( " inside refresh cart ");
        	$scope.cart=data;
        });
    };
    
    
     * clearCartItems method is used to delete all items from the cart
     
    $scope.clearCartItems = function () {
    $http['delete']('http://localhost:8080/universal/usercart/cart/clearCartItems/'+$scope.cartId).success(function (data) {$scope.refreshCartItems()});
    };
});
*/