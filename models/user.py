from sqlalchemy import Column, String, Integer
from database import Base
import datetime
from sqlalchemy import TIMESTAMP
from sqlalchemy.dialects.postgresql import JSONB


class User(Base):
    __tablename__ = "users"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, unique=True, index=True)
    value = Column(JSONB)
    date_update = Column(TIMESTAMP, default=datetime.datetime.now())
