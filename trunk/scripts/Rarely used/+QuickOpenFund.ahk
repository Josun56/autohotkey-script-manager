;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ���ٴ�Ԥ��ļ�����ҳ
;
; gaochao.morgen@gmail.com
; 2014/1/20
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#SingleInstance Force	; �����Ի����Զ��滻��ʵ��
#NoEnv					; �����ձ����Ƿ�Ϊ�������������������½ű�ʹ�ã�

navigator := "C:\Program Files\Mozilla Firefox\firefox.exe"

Index := Object()
Index.Insert("sh000001")	; ��֤��ָ
Index.Insert("sz399006")	; ��ҵ��ָ

for index, element in Index
{
	URL := "http://finance.sina.com.cn/realstock/company/"
	URL .= element
	URL .= "/nc.shtml"

	CMD := navigator
	CMD .= " "
	CMD .= URL
	Run, %CMD%
}

;Fund := Object()
;Fund.Insert("260116")	; ��˳����
;Fund.Insert("630005")	; ���̶�̬
;
;for index, element in Fund
;{
;	URL := "http://finance.sina.com.cn/fund/quotes/"
;	URL .= element
;	URL .= "/bc.shtml"
;
;	CMD := navigator
;	CMD .= " "
;	CMD .= URL
;	Run, %CMD%
;}

