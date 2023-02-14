require "test_helper"

class DeliveriesControllerTest < ActionDispatch::IntegrationTest
  def test_create_depart_without_route_id
    assert_raises "route_id must be different than nil" do
      depart = Depart.new
      depart.save!
    end
  end

  def test_create_delivery_without_depart_id
    assert_raises "depart_id must be different than nil" do 
      delivery = Delivery.new
      delivery.save!
    end
  end

  def test_show_deliveries_from_a_route
    route = Route.create!(id: 1, name: "test")
    depart = Depart.create!(id: 1, name: "test", route_id: 1)
    delivery = Delivery.create!(id: 1, name: "test", depart_id: 1)

    assert route && depart && delivery    
  end
end
