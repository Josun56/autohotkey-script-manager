#####################################################
# �������ļ������ж��뷽ʽ����
# �÷���gawk -f alignColumn.awk urfile
#
# ���ߣ�gaochao.morgen@gmail.com
# ���ڣ�2013.5.16
#####################################################

BEGIN {
	# FS = "+";
}
{
	fpl[FNR] = NF;
	for (i=1; i<=NF; i++) {
		data[FNR, i] = $i;
		if (length($i) > max[i]) {
			max[i] = length($i);		# max[i]: ��i�е��������У������ĳ���
		}
	}
}
END { 
	for (l=1; l<=FNR; l++) {			# ����END��ʱ���Ѿ������ļ����һ��. ��˴�ʱ��FNR�����ļ�������
		for (i=1; i<=fpl[l]; i++) { 	# fpl[l]: ��l�е�����. ��ÿ����FS���ŷָ����Ķ�����
			fmt = "%-" max[i] "s";
			if (i > 1) {
				printf " ";				# ��Ϊÿ��(����һ��)ǰĬ�����õ�һ���ո�
			}
			printf(fmt, data[l, i]);	# data[l,i]: ��l�еĵ�i����
		}
		printf "\n";
	}
}

