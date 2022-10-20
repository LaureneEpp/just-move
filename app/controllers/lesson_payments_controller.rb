class LessonPaymentsController < InheritedResources::Base

  private

    def lesson_payment_params
      params.require(:lesson_payment).permit(:payment_number, :status, :date, :cost, :service, :booking_id, :account_id)
    end

end
