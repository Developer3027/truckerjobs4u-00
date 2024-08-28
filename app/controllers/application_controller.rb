class ApplicationController < ActionController::Base
  before_action :set_metadata

  def set_metadata
    set_meta_tags title: "TRUCKERJOBS4U.com",
                  description: "TruckerJobs4u.com is a platform for truckers looking to find jobs. A recruiting service that focuses on delivering top quality service to our customers.",
                  author: "Developer3027 | Mason Roberts",
                  og: {
                    title: "TRUCKERJOBS4U.com",
                    description: "TruckerJobs4u.com is a platform for truckers looking to find jobs. A recruiting service that focuses on delivering top quality service to our customers.",
                    type: "website",
                    image: "https://blog3169.s3.us-east-2.amazonaws.com/hero.png",
                    site_name: "TruckerJobs4u.com"
                  },
                  twitter: {
                    card: "summary",
                    site: "@TRUCKERJOBS4U",
                    title: "TruckerJobs4u.com",
                    description: "TruckerJobs4u.com is a platform for truckers looking to find jobs. A recruiting service that focuses on delivering top quality service to our customers.",
                    image: "https://blog3169.s3.us-east-2.amazonaws.com/hero.pnghttps://blog3169.s3.us-east-2.amazonaws.com/og.png"
                  }
  end
end
