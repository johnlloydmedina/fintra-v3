class BorrowersController < ApplicationController
  def index
    @borrowers = Borrower.all
  end

  def show
  end

  def new
    @borrower = Borrower.new
  end

  def create
    @borrower = Borrower.new(borrower_params)

    if @borrower.save
      redirect_to borrowers_path, notice: "Borrower was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @borrower.update(borrower_params)
      redirect_to borrowers_path, notice: "Borrower was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @borrower.destroy
    redirect_to borrowers_path, notice: "Borrower was successfully deleted."
  end

  private

  def borrower_params
    params.require(:borrower).permit(:name, :email, :address, :status)
  end
end
