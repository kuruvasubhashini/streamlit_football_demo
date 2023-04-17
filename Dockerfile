FROM python:3.7
CMD mkdir /app
COPY . .
COPY requirements.txt requirements.txt

RUN ls

RUN pip install -r requirements.txt

ENV PORT 8501
ENV PORT 80

CMD ["streamlit", "run", "helloworld.py", "--server.port", "80"]
