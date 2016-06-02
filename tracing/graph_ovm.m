
%% sch total time
xaxis=[1 2 3 4 5 6 7 8];
lw=[4,5,4,3,3];
ms=[6,10,8,6,6];
ls=cellstr(['-s ';'-og';'-^m';'-sk';'-or';'-^c';'-oy';'-xb';'-^r']);



                   
sch_time = [[246696791, 188819750, 148750866, 118210860, 93898299, 68504821, 40440081, 25493649];...
[249041209, 186373721, 150255863, 124902321, 101786742, 79099427, 51756567, 31425729];...
[234954964, 189614127, 158253518, 122619782, 94222725, 71680135, 47429233, 25528016];...
[247152944, 188636709, 161489039, 127622827, 97670551, 76065534, 57115225, 33635774];...
[265987882, 193037903, 147055834, 118291704, 93993806, 67369800, 46262168, 18924288];...
[248571170, 199246179, 174587901, 127175524, 104578082, 79191007, 48276315, 24949054];...
[261257129, 189113550, 164738198, 132109510, 121706881, 111093590, 106260305, 97654242];...
[287873725, 220051479, 188506321, 154145729, 143276904, 117370000, 107222390, 94906859] ]

dists_title = cellstr(['Bimodal Task Utilization [0.66%:(0.001,0.1), 0.33%:(0.5, 0.9)]';
                       'Heavy Task Utilization (0.5, 0.9)                             ';
                       'Medium Task Utilization (0.1, 0.4)                            ';
                       'Light Task Utilization (0.001, 0.1)                           ']);


file_title = cellstr([ 'bimo-sched-total-time  ';
                       'heavy-sched-total-time ';
                       'medium-sched-total-time';
                       'light-sched-total-time ']);
for i=1:length(dists_title)
	h=figure


	plot(xaxis,sch_time(2*i-1,:),ls{1},'LineWidth',lw(1),'MarkerSize',ms(1));
	hold on
    plot(xaxis,sch_time(2*i,:),ls{2},'LineWidth',lw(2),'MarkerSize',ms(2));

	h_title=title(strtrim(dists_title{i}),'Interpreter', 'none');
	set(h_title,'FontSize',12);

	h_legend=legend('long-period','moderate-period','Location','sw');%[0.8, 0.3, 0.1, 01]);

	set(h_legend,'FontSize',15);
	set(gca,'fontsize',15)
	xlabel('Task Set Utilization','FontSize',15)
	ylabel('Scheduling total time','FontSize',15)
	grid on

	%save to pdf
	set(h,'Units','Inches');
	pos = get(h,'Position');
	set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
	print(h,strcat(strtrim(file_title{i}),''),'-dpdf','-r0')
end


%% sch events cnt
xaxis=[1 2 3 4 5 6 7 8];
lw=[4,5,4,3,3];
ms=[6,10,8,6,6];
ls=cellstr(['-s ';'-og';'-^m';'-sk';'-or';'-^c';'-oy';'-xb';'-^r']);



                   
sch_cnt = [[142855, 124364, 107251, 88407, 72650, 51319, 33184, 19544];...
 [143077, 125140, 109136, 92368, 76999, 62595, 39319, 20205];...
 [143096, 124758, 106780, 88881, 70435, 53374, 33081, 15032];...
 [143405, 125379, 107555, 91605, 72682, 53119, 39505, 19782];...
 [142488, 124828, 106417, 87804, 70868, 56946, 39934, 24513];...
 [143028, 131311, 109330, 93331, 76408, 61020, 40770, 18500];...
 [145477, 132325, 107965, 92500, 80261, 66175, 54688, 46809];...
 [158040, 144466, 122709, 102552, 93036, 70574, 56357, 45216]]
dists_title = cellstr(['Bimodal Task Utilization [0.66%:(0.001,0.1), 0.33%:(0.5, 0.9)]';
                       'Heavy Task Utilization (0.5, 0.9)                             ';
                       'Medium Task Utilization (0.1, 0.4)                            ';
                       'Light Task Utilization (0.001, 0.1)                           ']);


file_title = cellstr([ 'bimo-sched-total-count  ';
                       'heavy-sched-total-count ';
                       'medium-sched-total-count';
                       'light-sched-total-count ']);

for i=1:length(dists_title)

	h=figure

	plot(xaxis,sch_cnt(2*i-1,:),ls{1},'LineWidth',lw(1),'MarkerSize',ms(1));
	hold on
    plot(xaxis,sch_cnt(2*i,:),ls{2},'LineWidth',lw(2),'MarkerSize',ms(2));
	h_title=title(strtrim(dists_title{i}),'Interpreter', 'none');
	set(h_title,'FontSize',12);

	h_legend=legend('long-period','moderate-period','Location','sw');%[0.8, 0.3, 0.1, 01]);

	set(h_legend,'FontSize',15);
	set(gca,'fontsize',15)
	xlabel('Task Set Utilization','FontSize',15)
	ylabel('Scheduling total count','FontSize',15)
	grid on

	%save to pdf
	set(h,'Units','Inches');
	pos = get(h,'Position');
	set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
	print(h,strcat(strtrim(file_title{i}),''),'-dpdf','-r0')

end