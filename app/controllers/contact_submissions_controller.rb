class ContactSubmissionsController < ApplicationController
  before_action :set_contact_submission, only: %i[ show update destroy ]

  # GET /contact_submissions
  def index
    @contact_submissions = ContactSubmission.all

    render json: @contact_submissions
  end

  # GET /contact_submissions/1
  def show
    render json: @contact_submission
  end

  # POST /contact_submissions
  def create
    @contact_submission = ContactSubmission.new(contact_submission_params)

    if @contact_submission.save
      render json: @contact_submission, status: :created, location: @contact_submission
    else
      render json: @contact_submission.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /contact_submissions/1
  def update
    if @contact_submission.update(contact_submission_params)
      render json: @contact_submission
    else
      render json: @contact_submission.errors, status: :unprocessable_content
    end
  end

  # DELETE /contact_submissions/1
  def destroy
    @contact_submission.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_submission
      @contact_submission = ContactSubmission.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def contact_submission_params
      params.expect(contact_submission: [ :name, :email, :company, :phone, :subject, :message, :service_interest, :status, :ip_address ])
    end
end
