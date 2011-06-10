class PagesController < ApplicationController
  def home
    @gene_summaries = GeneSummary.order("evidence_types_count desc, evidence_total_count desc").includes(:gene).limit(50).page(params[:page])
  end

  def about
  end

end
