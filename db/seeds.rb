vacancy_name = "You?"

talks = [
  {
    scheduled_for: "Jan 22, 2012",
    title: "Notes From a Freelancer",
    speaker_name: "Lindsay Clark",
    speaker_company: "Lift Interactive",
    speaker_job_title: "Designer/Developer",
    speaker_email: "hello@curlybird.ca",
    speaker_facebook: "lindsayecho",
    speaker_twitter: "lindsayecho",
    speaker_website: "curlybird.ca",
    notes: "Nulla facilisi. Pellentesque a velit mauris. Donec cursus elementum neque vitae rutrum. Vivamus non molestie erat. In condimentum nibh et odio gravida dictum. Nullam ac ipsum in arcu luctus fringilla non sed est. Donec fringilla pellentesque tincidunt. Cras quam neque, porta quis fermentum ut, scelerisque sit amet lacus. Praesent nec pellentesque lacus. Maecenas mattis nisl eu ante semper feugiat. Sed ullamcorper risus eget orci consectetur rhoncus. Etiam nulla magna, hendrerit sit amet ultrices ut, vehicula in massa. Maecenas vitae augue justo, non faucibus nulla. Ut mollis nunc in mauris varius eget dapibus diam condimentum. Vivamus ipsum elit, porta vitae pulvinar vel, eleifend quis nisi.\n\nNulla accumsan purus dolor, et interdum tellus. Etiam nec nisl ac metus placerat condimentum quis elementum mi. In orci tortor, euismod non fermentum in, ultricies in sapien. Nam eget metus nec metus rhoncus blandit. Vestibulum vitae odio metus, nec vestibulum purus. Proin dignissim semper urna, nec ultricies orci ornare quis. Curabitur in dapibus lacus. Vivamus tristique scelerisque leo in adipiscing. Vivamus aliquam est vel dolor vulputate at rutrum quam dignissim. Integer consequat massa at nunc pellentesque posuere. Sed interdum accumsan consectetur. Nam eleifend pharetra mi quis ornare. Mauris venenatis dolor sit amet risus pharetra eleifend.\n\nPraesent sed malesuada nisi. Aenean id urna purus, sit amet pulvinar diam. Mauris tempor leo et metus fringilla commodo. Quisque elit metus, facilisis sit amet commodo id, congue ac lectus. Quisque fermentum mattis quam eget ornare. Pellentesque blandit, ante sed mattis consectetur, felis neque mattis enim, in rhoncus ligula lectus vitae ipsum. Proin mauris lorem, imperdiet in bibendum non, malesuada a nibh. Praesent eget mauris velit, rhoncus tempus velit. Vestibulum sed tortor arcu, volutpat molestie urna. Sed sodales arcu in mi gravida mollis. Etiam quis dolor mi, vitae luctus dolor. Etiam nisi leo, sollicitudin at euismod sit amet, fringilla at massa.",
    confirmed: true
  },
  {
    scheduled_for: "Jan 22, 2012",
    title: "Vacant",
    speaker_name: vacancy_name,
    confirmed: true
  },

  {
    scheduled_for: "Jan 29, 2012",
    title: "Vacant",
    speaker_name: vacancy_name,
    confirmed: true
  },
  {
    scheduled_for: "Jan 29, 2012",
    title: "Vacant",
    speaker_name: vacancy_name,
    confirmed: true
  },

  {
    scheduled_for: "Feb 5, 2012",
    title: "Developing With Github",
    speaker_name: "Christian Naths",
    speaker_job_title: "Freelancer",
    speaker_email: "christiannaths@gmail.com",
    speaker_facebook: "christiannaths",
    speaker_twitter: "christiannaths",
    speaker_github: "christiannaths",
    speaker_googleplus: "115533876061806126155",
    speaker_website: "christiannaths.com",
    notes: "Phasellus convallis posuere risus, quis mollis orci suscipit nec. Curabitur commodo enim pharetra ipsum condimentum ac vulputate sem tincidunt. Ut nec libero tortor. Proin diam velit, malesuada eget scelerisque eu, accumsan at justo. Cras nec odio enim, at adipiscing ante. Nunc bibendum egestas velit ut commodo. Donec id dui erat, non varius ante. Morbi neque erat, ultricies sed tempus sed, varius non libero. Fusce neque enim, sollicitudin at vestibulum at, viverra sed urna. Etiam eleifend, turpis at bibendum interdum, urna sem aliquet turpis, volutpat auctor nunc sapien ac augue. Fusce non nisi neque. Phasellus erat ipsum, feugiat eu cursus et, semper eu tellus. Sed scelerisque purus sed erat eleifend ornare. Nulla facilisi. In venenatis mauris at ante ultricies nec vestibulum dui blandit. \n\nPraesent bibendum convallis porttitor. Nulla et feugiat dui. Suspendisse potenti. Aenean vitae sollicitudin augue. Sed orci quam, tincidunt et ultrices id, tristique et velit. Duis porttitor urna eget diam vehicula euismod. Nullam sagittis ultricies turpis, in iaculis augue rutrum non. Vivamus tristique orci ut diam pretium eget mollis mi pharetra. Cras mi velit, tempor at bibendum vel, imperdiet et orci.",
    slides_url: "https://speakerdeck.com/christiannaths/what-the-hex",
    confirmed: true
  },
  {
    scheduled_for: "Feb 5, 2012",
    title: "Vacant",
    speaker_name: vacancy_name,
    confirmed: true
  }
]

talks.each do |talk|
  Talk.create(talk)
end
