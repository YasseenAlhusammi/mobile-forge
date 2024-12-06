import pyzbar.pyzbar as pyzbar
from PIL import Image
import unittest

class TestPyzbar(unittest.TestCase):
    def test_decode_barcode(self):
        # ضع مسار صورة تحتوي على باركود لاختبار المكتبة
        image_path = 'path/to/barcode_image.png'  # استبدل بمسار الصورة الفعلي
        image = Image.open(image_path)
        decoded_objects = pyzbar.decode(image)
        self.assertGreater(len(decoded_objects), 0, "No barcodes found")
        print("Test passed: Found barcodes!")

if __name__ == "__main__":
    unittest.main()