class StaticPagesController < ApplicationController
    skip_before_action :require_login, only: [:top]
    def top; end

    def test; end

    def top_merge; end
end
