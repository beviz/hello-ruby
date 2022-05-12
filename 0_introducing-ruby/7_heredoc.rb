class User < ActiveRecord::Base
  def sql_query
    connection.execute <<-SQL
      SELECT * FROM USER
        WHERE 1 = 1
    SQL
  end

  def html
    <<-HTML.strip
      <!DOCTYPE html>
      <html>
        <head>
        <title>Page Title</title>
        </head>
        <body>
        <h1>My First Heading</h1>
        <p>My first paragraph.</p>
        </body>
      </html>
    HTML
  end
end
