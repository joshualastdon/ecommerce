@cart
Feature: Manage Cart
  In order to collect products to order
  As a convenient way to see the total price and products
  I want to have a cart for storing products

  Background:
    Given I have product titled The Lord of the Rings
    And I am on the root page

  Scenario: Add product to Cart
    When I follow "The Lord of the Rings"
    And I press "Add to Cart"
    Then I should see "Cart"
    And I should have 1 item in Cart
    And I should have "The Lord of the Rings" in Cart

  Scenario: Empty Cart
    When I follow "The Lord of the Rings"
    And I press "Add to Cart"
    And I press "Empty Cart"
    Then I should see "Your Cart is currently empty."
    And I should have 0 items in Cart