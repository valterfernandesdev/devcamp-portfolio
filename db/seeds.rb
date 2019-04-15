10.times do |blog|
  Blog.create!(
      title: "My blog post #{blog}",
      body: "Mussum Ipsum, cacilds vidis litro abertis. Mauris nec dolor in eros commodo tempor.
                Aenean aliquam molestie leo, vitae iaculis nisl.
                Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.
                Nullam volutpat risus nec leo commodo, ut interdum diam laoreet.
                Sed non consequat odio. Não sou faixa preta cumpadi, sou preto inteiris, inteiris.
                Quem manda na minha terra sou euzis! Praesent vel viverra nisi.
                Mauris aliquet nunc non turpis scelerisque, eget. Paisis, filhis, espiritis santis.
                Casamentiss faiz malandris se pirulitá."
  )
end
puts "10 BLOG POSTS CREATED"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "5 SKILLS CREATED"

9.times do |portfolio_item|
  Porfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service",
    body: "Mussum Ipsum, cacilds vidis litro abertis.
      Praesent malesuada urna nisi, quis volutpat erat hendrerit non.
      Nam vulputate dapibus. Viva Forevis aptent taciti sociosqu ad litora torquent.
      Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.
      Mé faiz elementum girarzis, nisi eros vermeio.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end
puts "9 PORTFOLIO ITEMS CREATED"