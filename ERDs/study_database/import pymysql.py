import pymysql

# 데이터베이스 연결 설정
conn = pymysql.connect(
    host='python_mysql_mysql',  # 컨테이너 이름 또는 IP
    user='cocolabhub',
    password='cocolabhub',
    db='python_mysql',  # 데이터베이스 이름
    charset='utf8mb4', 
    cursorclass=pymysql.cursors.DictCursor  # DictCursor로 설정    
)


       

    
    
    
def quest(index):
    with conn.cursor() as cursor:
        # Read
        sql = "SELECT * FROM QUESTION"
    cursor.execute(sql)
    question = cursor.fetchall()
        
    sql_options = "SELECT * FROM OPTION_TABLE WHERE OPTIONS = %s"
        
        
    def solve(solution):
        solution = []
        
        print(f'Question :'[QUESTION]) 
        
    
        q = QUESTION [index]
    print(f"Question {index + 1}: {q['QUESTION']}")
    for option in q['options']:
        print(option)
            


def answer(questions):
    score = 0  # 점수는 정수로 초기화합니다.

    for i in range(len(questions)):
        question = quest(questions, i)
        user_answer = input("Your answer (A, B, C, or D): ").strip().upper()

        if user_answer == question['answer']:
            score += 1  # 정답일 경우 점수를 1 증가시킵니다.

    # 퀴즈가 모두 끝난 후 최종 점수를 출력합니다.
    print(f"Quiz Completed! Your total score is: {score}/{len(questions)}")
