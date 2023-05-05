class ApplicationController < ActionController::Base

    def hello
        render html: "hello world!"
    end

    def goodbye
        render html: "goodbye!"
    end

    def extra
        render json: {
            "message": "hello world!",
            "error": "goodbye world!"
        }
    end

    def example
        respond_to do |format|
            format.html { render html: "Here we go again!" }
            format.json { render json: { "message": "Here we go again doar ca in Json!" } }
        end
    end

    def homepage
        render template:'HomePage/homepage'
    end
end
