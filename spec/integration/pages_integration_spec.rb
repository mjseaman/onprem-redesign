require File.dirname(__FILE__) + '/../spec_helper'

describe "Page navigation" do

  it "renders the home page" do
    get "/"
    expect(response).to render_template(:home)
    expect(response.body).to include("main")
  end
  it "renders the about page" do
    get "/about"
    expect(response).to render_template(:about)
    expect(response.body).to include("main")
  end
  it "renders the offerings page" do
    get "/offerings"
    expect(response).to render_template(:offerings)
    expect(response.body).to include("main")
  end
  it "renders the work page" do
    get "/work"
    expect(response).to render_template(:work)
    expect(response.body).to include("main")
  end
  it "renders the team page" do
    get "/team"
    expect(response).to render_template(:team)
    expect(response.body).to include("main")
  end
  it "renders the careers page" do
    get "/careers"
    expect(response).to render_template(:careers)
    expect(response.body).to include("main")
  end
  it "renders the idc page" do
    get "/idc"
    expect(response).to render_template(:idc)
    expect(response.body).to include("main")
  end
  it "does not contain the Admin menu if the user is not an admin" do
    get "/" 
    expect(response).to_not include("Admin")
  end
end