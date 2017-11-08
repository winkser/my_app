class PagesController < ApplicationController
  def task_1
    @invoices = Invoice.all
    @invoices_sort = Invoice.all.sort {|a,b| my_sort_by_name(a.name, b.name)*-1}
  end

  def task_2
  end

  def index
    @count = Article.all.count
  end

  private
    #Sort. Select number in string and compare.
    def my_sort_by_name(a,b)
      a = Integer(a.scan(/\d+/)[0])
      b = Integer(b.scan(/\d+/)[0])
      return 1 if a>b
      return -1 if a<b
      return 0 if a==b
    end 
end
