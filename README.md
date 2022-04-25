# Ruby App

Simple bitmap editor that is represented as M X N matrix.

# Files

**bitmap_editor** responsible for initiating the editor.

**lib/validator** responsible for handling edge cases and validating params and inputs.

**lib/editor** to read the inputs through readline and process the commands.

**lib/bitmap** to initialize a M x N matrix with given params

**lib/commands/c** handle C command that is used to clear the matrix > C

**lib/commands/h** it creates a horizontal segment of colour in a row between two columns > H X1 X2 Y C

**lib/commands/i** it create a M x N empty matrix > I M N

**lib/commands/l** it add color to the given column and row > L X Y C

**lib/commands/s** it show the contents of the current canvas > S

**lib/commands/v** it draw a vertical segment of colour C in column X between rows Y1 and Y2 > V X Y1 Y2 C

**Gemfile** contains ***rspec*** for testing specs.

# Usage

    chmod +x generator.rb
    ./bitmap_editor.rb

To test specs, run the following:

    gem install bundler
    bundle install
    bundle exec rspec