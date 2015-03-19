module CategoryIconsHelper

cat_img = [
  "category-icons/Business & Career.png",
  "category-icons/Current Events.png",
  "category-icons/Education & Knowledge.png",
  "category-icons/Electronics & Gadgets.png",
  "category-icons/Entertainment.png",
  "category-icons/Food.png",
  "category-icons/Health & Fitness.png",
  "category-icons/Money Matters.png",
  "category-icons/Sports.png",
  "category-icons/Travel & Lifestyle.png"
]

  def category_icon(id)
    cat_img[id]
  end
end