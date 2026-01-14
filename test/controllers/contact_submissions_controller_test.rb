require 'test_helper'

class ContactSubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_submission = contact_submissions(:one)
  end

  test 'should get index' do
    get contact_submissions_url, as: :json
    assert_response :success
  end

  test 'should create contact_submission' do
    assert_difference('ContactSubmission.count') do
      post contact_submissions_url,
           params: { contact_submission: {
            company: @contact_submission.company,
            email: @contact_submission.email,
            ip_address: @contact_submission.ip_address, 
            essage: @contact_submission.message, 
            name: @contact_submission.name, 
            phone: @contact_submission.phone, 
            service_interest: @contact_submission.service_interest, 
            status: @contact_submission.status,
            subject: @contact_submission.subject } }, as: :json
    end

    assert_response :created
  end

  test 'should show contact_submission' do
    get contact_submission_url(@contact_submission), as: :json
    assert_response :success
  end

  test 'should update contact_submission' do
    patch contact_submission_url(@contact_submission),
          params: { contact_submission: {
            company: @contact_submission.company,
            email: @contact_submission.email,
            ip_address: @contact_submission.ip_address,
            message: @contact_submission.message,
            name: @contact_submission.name,
            phone: @contact_submission.phone,
            service_interest: @contact_submission.service_interest,
            status: @contact_submission.status,
            subject: @contact_submission.subject
          } }, as: :json
    assert_response :success
  end

  test 'should destroy contact_submission' do
    assert_difference('ContactSubmission.count', -1) do
      delete contact_submission_url(@contact_submission), as: :json
    end

    assert_response :no_content
  end
end
