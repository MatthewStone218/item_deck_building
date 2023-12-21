import os
from PIL import Image

def resize_and_delete_originals_in_folder(root_folder):
    for subdir, _, files in os.walk(root_folder):
        for file in files:
            if file.lower().endswith(('.png', '.jpg', '.jpeg', '.bmp', '.gif')):
                file_path = os.path.join(subdir, file)
                try:
                    with Image.open(file_path) as img:
                        # 안티 에일리어싱 옵션 없이 크기 조정
                        new_img = img.resize((img.width * 4, img.height * 4), Image.NEAREST)
                        resized_file_path = os.path.join(subdir, f"{os.path.splitext(file)[0]}_resized{os.path.splitext(file)[1]}")
                        new_img.save(resized_file_path)

                        # 원본 파일 삭제
                        os.remove(file_path)
                except Exception as e:
                    print(f"Error processing {file_path}: {e}")

# 사용 예시: 'path/to/your/folder'에 원하는 폴더 경로를 입력하세요.
resize_and_delete_originals_in_folder('slimes')