function Code_Irregs = Code_Irregulars
% 生成所有不规则木卫编号
% JPL 网站上第二列的Code
% https://ssd.jpl.nasa.gov/sats/ephem/sep.html
% 2023.3.7
%---------------------------------------------------
Codes_Irr = [506
507
508
509
510
511
512
513
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
55501
55502
55503
55504
55505
55506
55507];

Codes_Irr2023 = [55509
55510
55511
55512
55513
55514
55515
55516
55517
55518
55519
55520]; 

Codes_Irregs = [Codes_Irr; Codes_Irr2023]; 

N = length(Codes_Irregs); 
Code_Irregs = cell(N, 1); 
for i = 1 : N
    Code_Irregs{i} = num2str(Codes_Irregs(i)); 
end
end
