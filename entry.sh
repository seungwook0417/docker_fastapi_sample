#!/bin/sh
uvicorn main:app --host "$HOST" --port "$PORT" --workers 1 --reload --log-level info