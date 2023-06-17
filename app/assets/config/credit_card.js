// app/assets/javascripts/credit_card.js
document.addEventListener('DOMContentLoaded', () => {
    const cardNumberField = document.getElementById('cardNumberField');
    const cardImageContainer = document.getElementById('cardImageContainer');
  
    const updateCardImage = () => {
      const cardNumber = cardNumberField.value;
      cardImageContainer.innerHTML = '';
  
      if (cardNumber.startsWith('2') || cardNumber.startsWith('5')) {
        const mastercardImage = document.createElement('img');
        mastercardImage.className = 'img-fluid';
        mastercardImage.src = 'https://img.icons8.com/color/48/000000/mastercard-logo.png';
        cardImageContainer.appendChild(mastercardImage);
      } else if (cardNumber.startsWith('4')) {
        const visaImage = document.createElement('img');
        visaImage.className = 'img-fluid';
        visaImage.src = 'https://img.icons8.com/color/48/000000/visa.png';
        cardImageContainer.appendChild(visaImage);
      }
    };
  
    if (cardNumberField && cardImageContainer) {
      cardNumberField.addEventListener('input', updateCardImage);
      updateCardImage();
    }
  });
  