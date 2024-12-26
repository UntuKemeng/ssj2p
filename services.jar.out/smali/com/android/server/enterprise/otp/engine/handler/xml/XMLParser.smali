.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# instance fields
.field private mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

.field private mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

.field private mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

.field private mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

.field public xmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseAlgorithmParameterToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 654
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;-><init>()V

    .line 655
    .local v0, "algoParam":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;
    const/4 v6, 0x0

    .line 656
    .local v6, "tagname":Ljava/lang/String;
    const/4 v7, 0x0

    .line 658
    .local v7, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 661
    .local v4, "eventType":I
    :goto_0
    const/4 v1, 0x0

    .line 662
    .local v1, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 664
    packed-switch v4, :pswitch_data_0

    .line 719
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_4

    .line 730
    .end local v1    # "breakWhile":Z
    .end local v4    # "eventType":I
    :goto_2
    return-object v0

    .line 669
    .restart local v1    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 670
    goto :goto_1

    .line 673
    :pswitch_2
    if-eqz v6, :cond_0

    .line 675
    const-string v8, "Suite"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 676
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setSuite(Ljava/lang/String;)V

    .line 677
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter Suite = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 724
    .end local v1    # "breakWhile":Z
    .end local v4    # "eventType":I
    :catch_0
    move-exception v3

    .line 725
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser :: failed to parse Algorithm parameters - XmlPullParserException Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 678
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :cond_1
    :try_start_1
    const-string v8, "ChallengeFormat"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 679
    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;-><init>()V

    .line 680
    .local v2, "challengeFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
    const/4 v8, 0x0

    const-string v9, "Encoding"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setEncoding(Ljava/lang/String;)V

    .line 681
    const/4 v8, 0x0

    const-string v9, "CheckDigits"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setCheckDigit(Ljava/lang/String;)V

    .line 683
    const/4 v8, 0x0

    const-string v9, "Min"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setMin(Ljava/lang/String;)V

    .line 684
    const/4 v8, 0x0

    const-string v9, "Max"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->setMax(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setChallengeFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;)V

    .line 686
    if-eqz v2, :cond_0

    .line 687
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ChallengeFormat Encoding = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 689
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ChallengeFormat CheckDigit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getCheckDigit()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 691
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ChallengeFormat Min = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getMin()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 693
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ChallengeFormat Max = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;->getMax()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 726
    .end local v1    # "breakWhile":Z
    .end local v2    # "challengeFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
    .end local v4    # "eventType":I
    :catch_1
    move-exception v3

    .line 727
    .local v3, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser :: failed to parse Algorithm parameters - IOException Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 696
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "breakWhile":Z
    .restart local v4    # "eventType":I
    :cond_2
    :try_start_2
    const-string v8, "ResponseFormat"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 697
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;-><init>()V

    .line 698
    .local v5, "responseFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
    const/4 v8, 0x0

    const-string v9, "Encoding"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->setEncoding(Ljava/lang/String;)V

    .line 699
    const/4 v8, 0x0

    const-string v9, "CheckDigits"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->setCheckDigit(Ljava/lang/String;)V

    .line 701
    const/4 v8, 0x0

    const-string v9, "Length"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->setLength(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->setResponseFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;)V

    .line 703
    if-eqz v5, :cond_0

    .line 704
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ResponseFormat Encoding = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getEncoding()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 706
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ResponseFormat CheckDigits = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getCheckDigit()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 708
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMLParser:: AlgoParameter ResponseFormat Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 711
    .end local v5    # "responseFormat":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
    :cond_3
    const-string v8, "AlgorithmParameters"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 712
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 722
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 723
    goto/16 :goto_0

    .line 664
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseAuthenticationCodeMAC(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1202
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;-><init>()V

    .line 1203
    .local v3, "mAuthenticationCodeMAC":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;
    const/4 v4, 0x0

    .line 1204
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1207
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1210
    .local v2, "eventType":I
    :goto_0
    const/4 v0, 0x0

    .line 1211
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1213
    packed-switch v2, :pswitch_data_0

    .line 1245
    :cond_0
    :goto_1
    if-eqz v0, :cond_5

    .line 1256
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-object v3

    .line 1215
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_0
    if-eqz v4, :cond_0

    .line 1217
    const-string v6, "Mac"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1218
    const/4 v6, 0x0

    const-string v7, "MacAlgorithm"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->setMacAlgo(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1250
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 1251
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Authentication Code MAC - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1223
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_1
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1224
    goto :goto_1

    .line 1227
    :pswitch_2
    if-eqz v4, :cond_0

    .line 1229
    const-string v6, "IterationCount"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1230
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->setIterationCount(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1252
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_1
    move-exception v1

    .line 1253
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Authentication Code MAC - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1231
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_1
    :try_start_2
    const-string v6, "Mac"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1232
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->setMac(Ljava/lang/String;)V

    goto :goto_1

    .line 1233
    :cond_2
    const-string v6, "Nonce"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1234
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->setNonce(Ljava/lang/String;)V

    goto :goto_1

    .line 1235
    :cond_3
    const-string v6, "AuthenticationCodeMAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1236
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1237
    :cond_4
    const-string v6, "AuthenticationData"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->xmlName:Ljava/lang/String;

    const-string v7, "KeyProvServerFinished"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1238
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1248
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 1249
    goto/16 :goto_0

    .line 1213
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseAuthenticationData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1150
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;-><init>()V

    .line 1151
    .local v3, "mAuthenticationData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;
    const/4 v4, 0x0

    .line 1152
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1155
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1158
    .local v2, "eventType":I
    :goto_0
    const/4 v0, 0x0

    .line 1159
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1161
    packed-switch v2, :pswitch_data_0

    .line 1187
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 1198
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-object v3

    .line 1163
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_0
    if-eqz v4, :cond_0

    .line 1165
    const-string v6, "AuthenticationCodeMAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1166
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseAuthenticationCodeMAC(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->setAuthenticationCodeMAC(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1192
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 1193
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Authentication Data - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1171
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_1
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1172
    goto :goto_1

    .line 1175
    :pswitch_2
    if-eqz v4, :cond_0

    .line 1177
    const-string v6, "ClientID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1178
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->setClientID(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1194
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_1
    move-exception v1

    .line 1195
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Authentication Data - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1179
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_1
    :try_start_2
    const-string v6, "AuthenticationData"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1180
    const/4 v0, 0x1

    goto :goto_1

    .line 1190
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 1191
    goto :goto_0

    .line 1161
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseCryptoModuleToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 599
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;-><init>()V

    .line 601
    .local v3, "mCryptoModule":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 602
    .local v2, "eventType":I
    const/4 v5, 0x0

    .line 605
    .local v5, "text":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 606
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "tagname":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 631
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_2

    .line 642
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 613
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 614
    goto :goto_1

    .line 617
    :pswitch_2
    if-eqz v4, :cond_0

    .line 619
    const-string v6, "Id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 620
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;->setId(Ljava/lang/String;)V

    .line 621
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: CryptoModuleInfo Id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 636
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 637
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Crypto module - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 623
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "CryptoModuleInfo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 624
    const/4 v0, 0x1

    goto :goto_1

    .line 634
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 635
    goto :goto_0

    .line 638
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 639
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Crypto module - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseDataToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 740
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;-><init>()V

    .line 741
    .local v1, "data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
    const/4 v5, 0x0

    .line 742
    .local v5, "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    const/4 v3, 0x0

    .line 743
    .local v3, "encrypt":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    const/4 v7, 0x0

    .line 744
    .local v7, "tagname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 746
    .local v8, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .local v4, "eventType":I
    move-object v6, v5

    .line 749
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .local v6, "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :goto_0
    const/4 v0, 0x0

    .line 750
    .local v0, "breakWhile":Z
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 751
    packed-switch v4, :pswitch_data_0

    :cond_0
    move-object v5, v6

    .line 812
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :goto_1
    if-eqz v0, :cond_10

    .line 823
    .end local v0    # "breakWhile":Z
    .end local v4    # "eventType":I
    :goto_2
    return-object v1

    .line 753
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v0    # "breakWhile":Z
    .restart local v4    # "eventType":I
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :pswitch_0
    if-nez v7, :cond_1

    move-object v5, v6

    .line 754
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 755
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_1
    const-string v9, "Secret"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 756
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 757
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_2
    const-string v9, "Counter"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 758
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 759
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_3
    const-string v9, "Time"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 760
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 761
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_4
    const-string v9, "TimeInterval"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 762
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 763
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_5
    const-string v9, "TimeDrift"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 764
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;-><init>()V

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 765
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_6
    const-string v9, "EncryptedValue"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 766
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseEncryptedValueToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v3

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 771
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v5, v6

    .line 772
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 775
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :pswitch_2
    if-nez v7, :cond_7

    move-object v5, v6

    .line 776
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 777
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_7
    const-string v9, "PlainValue"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    .line 779
    const-string v9, "\\s"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 780
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->setPlainValue(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_1

    .line 781
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_8
    const-string v9, "ValueMAC"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v8, :cond_9

    if-eqz v6, :cond_9

    .line 782
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->setValueMAC(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setStructuredData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_1

    .line 785
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_9
    const-string v9, "Secret"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v6, :cond_b

    .line 786
    if-eqz v3, :cond_a

    .line 787
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->setEncryptedValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;)V

    .line 788
    :cond_a
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setSecret(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 789
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setStructuredData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_1

    .line 792
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_b
    const-string v9, "Counter"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-eqz v6, :cond_c

    .line 793
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setCounter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 794
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser:: Data Counter = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_1

    .line 795
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_c
    const-string v9, "Time"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v6, :cond_d

    .line 796
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setTime(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 797
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser:: Data Time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTime()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_1

    .line 798
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_d
    const-string v9, "TimeInterval"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v6, :cond_e

    .line 799
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setTimeInterval(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 800
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser:: Data TimeInterval = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeInterval()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_1

    .line 801
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_e
    const-string v9, "TimeDrift"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v6, :cond_f

    .line 802
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->setTimeDrift(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V

    .line 803
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser:: Data TimeDrift = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeDrift()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_1

    .line 804
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :cond_f
    const-string v9, "Data"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v9

    if-eqz v9, :cond_0

    .line 805
    const/4 v0, 0x1

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_1

    .line 815
    :cond_10
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    move-object v6, v5

    .line 816
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto/16 :goto_0

    .line 817
    .end local v0    # "breakWhile":Z
    .end local v4    # "eventType":I
    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :catch_0
    move-exception v2

    .line 818
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse data token - XmlPullParserException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 819
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 820
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse data token - IOException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 819
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v0    # "breakWhile":Z
    .restart local v4    # "eventType":I
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_4

    .line 817
    .end local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    .restart local v5    # "newData":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;
    goto :goto_3

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseDeviceInfoToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 512
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;-><init>()V

    .line 513
    .local v3, "mDeviceInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    const/4 v4, 0x0

    .line 514
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 517
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 520
    .local v2, "eventType":I
    :goto_0
    const/4 v0, 0x0

    .line 521
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 523
    packed-switch v2, :pswitch_data_0

    .line 576
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_c

    .line 587
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-object v3

    .line 528
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 529
    goto :goto_1

    .line 532
    :pswitch_2
    if-eqz v4, :cond_0

    .line 534
    const-string/jumbo v6, "manufacturer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 535
    const-string/jumbo v6, "oath."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "iana."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 536
    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setManufacturer(Ljava/lang/String;)V

    .line 537
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo Manufacturer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 581
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Device info - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 540
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Non-compliant Manufacturer value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 583
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_1
    move-exception v1

    .line 584
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Device info - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 541
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_3
    :try_start_2
    const-string/jumbo v6, "serialno"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 542
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setSerialNo(Ljava/lang/String;)V

    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo SerialNo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 545
    :cond_4
    const-string/jumbo v6, "model"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 546
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setModel(Ljava/lang/String;)V

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo Model = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 548
    :cond_5
    const-string v6, "IssueNo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 549
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setIssueNo(Ljava/lang/String;)V

    .line 550
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo IssueNo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getIssueNo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 552
    :cond_6
    const-string v6, "DeviceBinding"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 553
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setDeviceBinding(Ljava/lang/String;)V

    .line 554
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo DeviceBinding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 556
    :cond_7
    const-string v6, "StartDate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    .line 557
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setStartDate(Ljava/lang/String;)V

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo StartDate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 560
    :cond_8
    const-string v6, "ExpiryDate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    .line 561
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setExpiryDate(Ljava/lang/String;)V

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo ExpiryDate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 564
    :cond_9
    const-string v6, "UserId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    .line 565
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->setUserID(Ljava/lang/String;)V

    .line 566
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: DeviceInfo UserId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 568
    :cond_a
    const-string v6, "DeviceInfo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "DeviceId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 569
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 579
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 580
    goto/16 :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseKeyPackageToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 363
    const/4 v3, 0x0

    .line 365
    .local v3, "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "eventType":I
    move-object v4, v3

    .line 367
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .local v4, "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "tagname":Ljava/lang/String;
    const/4 v0, 0x0

    .line 370
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v3, v4

    .line 401
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :goto_1
    if-eqz v0, :cond_6

    .line 411
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v5    # "tagname":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 372
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v5    # "tagname":Ljava/lang/String;
    :pswitch_0
    if-nez v5, :cond_1

    move-object v3, v4

    .line 373
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_1

    .line 374
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_1
    const-string v6, "KeyPackage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 376
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;-><init>()V

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_1

    .line 377
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_2
    const-string v6, "Key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    .line 378
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->setKey(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;)V

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_1

    .line 379
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_3
    const-string v6, "DeviceInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseDeviceInfoToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_1

    .line 381
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_4
    const-string v6, "CryptoModuleInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 382
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseCryptoModuleToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->setCryptoModule(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/CryptoModule;)V

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_1

    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :pswitch_1
    move-object v3, v4

    .line 387
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_1

    .line 390
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :pswitch_2
    if-nez v5, :cond_5

    move-object v3, v4

    .line 391
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_1

    .line 392
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :cond_5
    const-string v6, "KeyPackage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    if-eqz v6, :cond_0

    .line 393
    const/4 v0, 0x1

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_1

    .line 404
    :cond_6
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    move-object v4, v3

    .line 405
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_0

    .line 406
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v5    # "tagname":Ljava/lang/String;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key package - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 408
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 409
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key package - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 408
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v2    # "eventType":I
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_4

    .line 406
    .end local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v3    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    goto :goto_3

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseKeyProvClientHello(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1260
    const/4 v5, 0x0

    .line 1261
    .local v5, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1262
    .local v4, "tagname":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1264
    .local v3, "parentTag":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1267
    .local v2, "eventType":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1268
    const/4 v0, 0x0

    .line 1270
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_0

    .line 1315
    :cond_0
    :goto_1
    if-eqz v0, :cond_b

    .line 1325
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-void

    .line 1272
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_0
    if-eqz v4, :cond_0

    .line 1274
    const-string v6, "DeviceId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1275
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseDeviceInfoToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1320
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 1321
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key Prov Client Hello - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1276
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_1
    :try_start_1
    const-string v6, "AuthenticationData"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1277
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseAuthenticationData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1322
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_1
    move-exception v1

    .line 1323
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key Prov Client Hello - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1278
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_2
    :try_start_2
    const-string v6, "SupportedKeyTypes"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1279
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseSupportedKeyTypes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setSupportedKeyTypes(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1280
    :cond_3
    const-string v6, "SupportedProtocolVariants"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1281
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseProtocolVariant(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setProtocolVariant(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;)V

    goto/16 :goto_1

    .line 1282
    :cond_4
    const-string v6, "SupportedEncryptionAlgorithms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1283
    const-string v3, "SupportedEncryptionAlgorithms"

    goto/16 :goto_1

    .line 1284
    :cond_5
    const-string v6, "SupportedMacAlgorithms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1285
    const-string v3, "SupportedMacAlgorithms"

    goto/16 :goto_1

    .line 1286
    :cond_6
    const-string v6, "SupportedKeyPackages"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1287
    const-string v3, "SupportedKeyPackages"

    goto/16 :goto_1

    .line 1292
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1293
    goto/16 :goto_1

    .line 1296
    :pswitch_2
    if-eqz v4, :cond_0

    .line 1298
    const-string v6, "KeyID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 1299
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setKeyID(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1300
    :cond_7
    const-string v6, "Algorithm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    const-string v6, "SupportedEncryptionAlgorithms"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1301
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setSupportedEncryptionAlgorithms(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1302
    :cond_8
    const-string v6, "Algorithm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v3, :cond_9

    const-string v6, "SupportedMacAlgorithms"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1303
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setSupportedMacAlgorithms(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1304
    :cond_9
    const-string v6, "KeyPackageFormat"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    const-string v6, "SupportedKeyPackages"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1305
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setSupportedKeyPackageFormat(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1306
    :cond_a
    const-string v6, "KeyProvClientHello"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1307
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1318
    :cond_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 1319
    goto/16 :goto_0

    .line 1270
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseKeyProvTrigger(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1091
    const/4 v5, 0x0

    .line 1092
    .local v5, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1095
    .local v4, "tagname":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1098
    .local v2, "eventType":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1099
    const/4 v0, 0x0

    .line 1101
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_0

    .line 1137
    :cond_0
    :goto_1
    if-eqz v0, :cond_5

    .line 1147
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-void

    .line 1103
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_0
    if-eqz v4, :cond_0

    .line 1105
    const-string v6, "DeviceId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1106
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseDeviceInfoToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1142
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 1143
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key Provision Trigger - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1107
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_1
    :try_start_1
    const-string v6, "AuthenticationData"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1108
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseAuthenticationData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1144
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_1
    move-exception v1

    .line 1145
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key Provision Trigger - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1113
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_1
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1114
    goto :goto_1

    .line 1117
    :pswitch_2
    if-eqz v4, :cond_0

    .line 1119
    const-string v6, "KeyID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 1120
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setKeyID(Ljava/lang/String;)V

    goto :goto_1

    .line 1121
    :cond_2
    const-string v6, "TokenPlatformInfo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1122
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;-><init>()V

    .line 1123
    .local v3, "mTokenPlatformInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;
    const/4 v6, 0x0

    const-string v7, "AlgorithmLocation"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->setAlgoLocation(Ljava/lang/String;)V

    .line 1124
    const/4 v6, 0x0

    const-string v7, "KeyLocation"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->setKeyLocation(Ljava/lang/String;)V

    .line 1125
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setTokenPlatformInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;)V

    goto/16 :goto_1

    .line 1126
    .end local v3    # "mTokenPlatformInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;
    :cond_3
    const-string v6, "ServerUrl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1127
    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setServerURL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1128
    :cond_4
    const-string v6, "InitializationTrigger"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1129
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1140
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 1141
    goto/16 :goto_0

    .line 1101
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x0

    .line 421
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;-><init>()V

    .line 422
    .local v3, "mKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;
    const/4 v4, 0x0

    .line 423
    .local v4, "tagname":Ljava/lang/String;
    const-string v6, "Id"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setId(Ljava/lang/String;)V

    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key Id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 425
    const-string v6, "Algorithm"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setAlgorithm(Ljava/lang/String;)V

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key Algorithm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 428
    const/4 v5, 0x0

    .line 430
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 433
    .local v2, "eventType":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_0

    .line 484
    :cond_0
    :goto_1
    if-eqz v0, :cond_13

    .line 490
    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getSecret()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V

    .line 501
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :cond_1
    :goto_2
    return-object v3

    .line 438
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_0
    if-eqz v4, :cond_0

    .line 440
    const-string v6, "AlgorithmParameters"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "pskc:AlgorithmParameters"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 441
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseAlgorithmParameterToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setAlgorithmParameter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 495
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key token - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 442
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_3
    :try_start_1
    const-string v6, "Data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "pskc:Data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 443
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseDataToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 497
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_1
    move-exception v1

    .line 498
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Key token - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 444
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_5
    :try_start_2
    const-string v6, "Policy"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "pskc:Policy"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 445
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parsePolicyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setPolicy(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;)V

    goto/16 :goto_1

    .line 450
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 451
    goto/16 :goto_1

    .line 454
    :pswitch_2
    if-eqz v4, :cond_0

    .line 456
    const-string v6, "Issuer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "pskc:Issuer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 457
    :cond_7
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setIssuer(Ljava/lang/String;)V

    .line 458
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key Issuer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getIssuer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 459
    :cond_8
    const-string v6, "FriendlyName"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "pskc:FriendlyName"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 460
    :cond_9
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setFriendlyName(Ljava/lang/String;)V

    .line 461
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key FriendlyName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 462
    :cond_a
    const-string v6, "UserID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "pskc:UserID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 463
    :cond_b
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setUserID(Ljava/lang/String;)V

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: UserID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getUserID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 465
    :cond_c
    const-string v6, "KeyProfileID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string/jumbo v6, "pskc:KeyProfileID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 466
    :cond_d
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setKeyProfileID(Ljava/lang/String;)V

    .line 467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key ProfileID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getKeyProfileID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 468
    :cond_e
    const-string v6, "KeyReference"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "pskc:KeyReference"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 469
    :cond_f
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setKeyReference(Ljava/lang/String;)V

    .line 470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: Key KeyReference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getKeyReference()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 471
    :cond_10
    const-string v6, "Key"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string/jumbo v6, "pskc:Key"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 472
    :cond_11
    iget-object v6, v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->mOcraSuite:Ljava/lang/String;

    if-eqz v6, :cond_12

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    if-nez v6, :cond_12

    .line 475
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;-><init>()V

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->setAlgorithmParameter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;)V

    .line 477
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 487
    :cond_13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 488
    goto/16 :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseMACMethodToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 300
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;-><init>()V

    .line 302
    .local v3, "macMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 303
    .local v2, "eventType":I
    const/4 v5, 0x0

    .line 305
    .local v5, "text":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "tagname":Ljava/lang/String;
    const/4 v0, 0x0

    .line 309
    .local v0, "breakWhile":Z
    packed-switch v2, :pswitch_data_0

    .line 342
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 352
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 311
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :pswitch_0
    if-eqz v4, :cond_0

    .line 313
    const-string v6, "MACMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    const/4 v6, 0x0

    const-string v7, "Algorithm"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->setShaAlgo(Ljava/lang/String;)V

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: MACMethod Algorithm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getShaAlgo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 347
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Mac method token - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 321
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 322
    goto :goto_1

    .line 325
    :pswitch_2
    if-eqz v4, :cond_0

    .line 327
    const-string v6, "EncryptionMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 328
    const/4 v6, 0x0

    const-string v7, "Algorithm"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->setCipherAlgo(Ljava/lang/String;)V

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser:: EncryptionMethod Algorithm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherAlgo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 349
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "tagname":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 350
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Mac method token - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 331
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "tagname":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v6, "CipherValue"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 332
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->setCipherData(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 333
    :cond_2
    const-string v6, "MACKey"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 334
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 345
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 346
    goto/16 :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parsePolicyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 833
    new-instance v4, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    invoke-direct {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;-><init>()V

    .line 834
    .local v4, "policy":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;
    const/4 v5, 0x0

    .line 835
    .local v5, "tagname":Ljava/lang/String;
    const/4 v6, 0x0

    .line 837
    .local v6, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 840
    .local v2, "eventType":I
    :goto_0
    const/4 v0, 0x0

    .line 841
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 843
    packed-switch v2, :pswitch_data_0

    .line 901
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_7

    .line 912
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-object v4

    .line 848
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 849
    goto :goto_1

    .line 852
    :pswitch_2
    if-eqz v5, :cond_0

    .line 854
    const-string v7, "StartDate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 855
    if-eqz v6, :cond_1

    .line 856
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setStartDate(Ljava/lang/String;)V

    .line 858
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: Policy StartDate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getStartDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 906
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 907
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse policy token - XmlPullParserException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 859
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_2
    :try_start_1
    const-string v7, "ExpiryDate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 860
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setExpiryDate(Ljava/lang/String;)V

    .line 861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: Policy ExpiryDate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 908
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_1
    move-exception v1

    .line 909
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse policy token - IOException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 862
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_3
    :try_start_2
    const-string v7, "NumberOfTransactions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 863
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setNoOfTransactions(Ljava/lang/String;)V

    .line 864
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: Policy NoOfTransactions = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    :cond_4
    const-string v7, "KeyUsage"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    .line 867
    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setKeyUsage(Ljava/lang/String;)V

    .line 868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: Policy KeyUsage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 870
    :cond_5
    const-string v7, "PINPolicy"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    .line 871
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;-><init>()V

    .line 872
    .local v3, "pinPolicy":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
    const/4 v7, 0x0

    const-string v8, "PINKeyId"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setPinKeyID(Ljava/lang/String;)V

    .line 873
    const/4 v7, 0x0

    const-string v8, "MaxFailedAttempts"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setMaxFailedAttempts(Ljava/lang/String;)V

    .line 875
    const/4 v7, 0x0

    const-string v8, "MinLength"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setMinLength(Ljava/lang/String;)V

    .line 876
    const/4 v7, 0x0

    const-string v8, "MaxLength"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setMaxLength(Ljava/lang/String;)V

    .line 877
    const/4 v7, 0x0

    const-string v8, "PINUsageMode"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setPinUsageMode(Ljava/lang/String;)V

    .line 879
    const/4 v7, 0x0

    const-string v8, "PINEncoding"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->setPinEncoding(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->setPinPolicy(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;)V

    .line 881
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy PINKeyId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinKeyID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 883
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy MaxFailedAttempts = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxFailedAttempts()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 885
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy MinLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 887
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy MaxLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 889
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy PINUsageMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinUsageMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 891
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser:: PINPolicy PINEncoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 893
    .end local v3    # "pinPolicy":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
    :cond_6
    const-string v7, "Policy"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 894
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 904
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 905
    goto/16 :goto_0

    .line 843
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseProtocolVariant(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1376
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;-><init>()V

    .line 1377
    .local v3, "mProtocolVariant":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;
    const/4 v5, 0x0

    .line 1378
    .local v5, "tagname":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1381
    .local v6, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1384
    .local v2, "eventType":I
    :goto_0
    const/4 v0, 0x0

    .line 1385
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1387
    packed-switch v2, :pswitch_data_0

    .line 1429
    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    .line 1439
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-object v3

    .line 1389
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_0
    if-eqz v5, :cond_0

    .line 1391
    const-string v7, "TwoPass"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1392
    sget-object v7, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;->TwoPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setSupportedProtocolVariant(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1434
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 1435
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse protocol variant - XmlPullParserException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1393
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_1
    :try_start_1
    const-string v7, "FourPass"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1394
    sget-object v7, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;->FourPass:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setSupportedProtocolVariant(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1436
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_1
    move-exception v1

    .line 1437
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse protocol variant - IOException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1399
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_1
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1400
    goto :goto_1

    .line 1403
    :pswitch_2
    if-eqz v5, :cond_0

    .line 1405
    const-string v7, "SupportedKeyProtectionMethod"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1406
    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setSupportedKeyProtectionMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 1407
    :cond_2
    const-string v7, "X509Certificate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1408
    new-instance v4, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    invoke-direct {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;-><init>()V

    .line 1409
    .local v4, "mX509Data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    if-eqz v6, :cond_0

    .line 1410
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->setX509Certificate([B)V

    .line 1411
    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V

    goto/16 :goto_1

    .line 1413
    .end local v4    # "mX509Data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    :cond_3
    const-string v7, "KeyName"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1414
    if-eqz v6, :cond_4

    const-string v7, "Pre-shared-key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1415
    sget-object v7, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setKeyInfo(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V

    .line 1417
    :cond_4
    if-eqz v6, :cond_0

    const-string v7, "Passphrase"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1418
    sget-object v7, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->setKeyInfo(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V

    goto/16 :goto_1

    .line 1421
    :cond_5
    const-string v7, "SupportedProtocolVariants"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1422
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1432
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 1433
    goto/16 :goto_0

    .line 1387
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseSupportedKeyTypes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    .local v3, "listKeyTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1330
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1334
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1337
    .local v2, "eventType":I
    :goto_0
    const/4 v0, 0x0

    .line 1338
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1340
    packed-switch v2, :pswitch_data_0

    .line 1361
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_2

    .line 1372
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-object v3

    .line 1345
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1346
    goto :goto_1

    .line 1349
    :pswitch_2
    if-eqz v4, :cond_0

    .line 1351
    const-string v6, "Algorithm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1352
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1366
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 1367
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Supported Key types - XmlPullParserException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1353
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    :cond_1
    :try_start_1
    const-string v6, "SupportedKeyTypes"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1354
    const/4 v0, 0x1

    goto :goto_1

    .line 1364
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1365
    goto :goto_0

    .line 1368
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_1
    move-exception v1

    .line 1369
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMLParser :: failed to parse Supported Key types - IOException Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1340
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    return-object v0
.end method

.method public getKeyProvClientHello()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    return-object v0
.end method

.method public getKeyProvServerFinished()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    return-object v0
.end method

.method public getKeyProvTrigger()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 20
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 95
    const/4 v6, 0x0

    .line 96
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x0

    .line 98
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 99
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 100
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 102
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 103
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 104
    .local v5, "eventType":I
    const-string v16, ""

    .line 105
    .local v16, "text":Ljava/lang/String;
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_1

    .line 106
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, "tagname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 109
    .local v8, "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    const/4 v9, 0x0

    .line 110
    .local v9, "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    const/4 v2, 0x0

    .line 111
    .local v2, "breakWhile":Z
    packed-switch v5, :pswitch_data_0

    .line 280
    :cond_0
    :goto_1
    if-eqz v2, :cond_27

    .line 291
    .end local v2    # "breakWhile":Z
    .end local v5    # "eventType":I
    .end local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .end local v15    # "tagname":Ljava/lang/String;
    .end local v16    # "text":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 113
    .restart local v2    # "breakWhile":Z
    .restart local v5    # "eventType":I
    .restart local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .restart local v15    # "tagname":Ljava/lang/String;
    .restart local v16    # "text":Ljava/lang/String;
    :pswitch_0
    if-eqz v15, :cond_0

    .line 116
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "**Parsing tagname : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 117
    const-string v17, "KeyProvTrigger"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 119
    new-instance v17, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .line 120
    const-string v17, "KeyProvTrigger"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->xmlName:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setVersion(Ljava/lang/String;)V

    .line 122
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvTrigger Version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getVersion()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_2

    .line 125
    const/4 v2, 0x1

    .line 127
    :cond_2
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v13

    .line 128
    .local v13, "nsstart":I
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v12

    .line 129
    .local v12, "nsend":I
    move v7, v13

    .local v7, "i":I
    :goto_3
    if-ge v7, v12, :cond_0

    .line 130
    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "nsUri":Ljava/lang/String;
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:pskc"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setPrefixPSKC(Ljava/lang/String;)V

    .line 129
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 133
    :cond_4
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:dskpp"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->setPrefixDSKPP(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 286
    .end local v2    # "breakWhile":Z
    .end local v5    # "eventType":I
    .end local v7    # "i":I
    .end local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .end local v11    # "nsUri":Ljava/lang/String;
    .end local v12    # "nsend":I
    .end local v13    # "nsstart":I
    .end local v15    # "tagname":Ljava/lang/String;
    .end local v16    # "text":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 287
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMLParser :: failed to parse the XML - XmlPullParser Exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 136
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "breakWhile":Z
    .restart local v5    # "eventType":I
    .restart local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .restart local v15    # "tagname":Ljava/lang/String;
    .restart local v16    # "text":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v17, "InitializationTrigger"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseKeyProvTrigger(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 288
    .end local v2    # "breakWhile":Z
    .end local v5    # "eventType":I
    .end local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .end local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .end local v15    # "tagname":Ljava/lang/String;
    .end local v16    # "text":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 289
    .local v3, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMLParser :: failed to parse the XML - IOException Exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 138
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "breakWhile":Z
    .restart local v5    # "eventType":I
    .restart local v8    # "key":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;
    .restart local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .restart local v15    # "tagname":Ljava/lang/String;
    .restart local v16    # "text":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v17, "KeyProvClientHello"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 140
    new-instance v17, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .line 141
    const-string v17, "KeyProvClientHello"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->xmlName:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setVersion(Ljava/lang/String;)V

    .line 143
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvClientHello Version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getVersion()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_7

    .line 146
    const/4 v2, 0x1

    .line 148
    :cond_7
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v13

    .line 149
    .restart local v13    # "nsstart":I
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v12

    .line 150
    .restart local v12    # "nsend":I
    move v7, v13

    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v12, :cond_d

    .line 151
    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v11

    .line 152
    .restart local v11    # "nsUri":Ljava/lang/String;
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:pskc"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixPSKC(Ljava/lang/String;)V

    .line 150
    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 154
    :cond_9
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:dskpp"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixDSKPP(Ljava/lang/String;)V

    goto :goto_6

    .line 156
    :cond_a
    const-string/jumbo v17, "http://www.w3.org/2000/09/xmldsig#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixDS(Ljava/lang/String;)V

    goto :goto_6

    .line 158
    :cond_b
    const-string/jumbo v17, "http://www.w3.org/2001/04/xmlenc#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixXENC(Ljava/lang/String;)V

    goto :goto_6

    .line 160
    :cond_c
    const-string/jumbo v17, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->setPrefixPKCS5(Ljava/lang/String;)V

    goto :goto_6

    .line 163
    .end local v11    # "nsUri":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseKeyProvClientHello(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 164
    .end local v7    # "i":I
    .end local v12    # "nsend":I
    .end local v13    # "nsstart":I
    :cond_e
    const-string v17, "KeyProvServerFinished"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 166
    new-instance v17, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .line 167
    const-string v17, "KeyProvServerFinished"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->xmlName:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setVersion(Ljava/lang/String;)V

    .line 169
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvServerFinished Version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getVersion()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_f

    .line 172
    const/4 v2, 0x1

    .line 174
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Status"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setStatus(Ljava/lang/String;)V

    .line 175
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvServerFinished Status = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getStatus()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getStatus()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Success"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 178
    const/4 v2, 0x1

    .line 180
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "SessionID"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setSessionId(Ljava/lang/String;)V

    .line 181
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMParserDskpp :: KeyProvServerFinished SessionID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getSessionId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 183
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v13

    .line 184
    .restart local v13    # "nsstart":I
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v12

    .line 185
    .restart local v12    # "nsend":I
    move v7, v13

    .restart local v7    # "i":I
    :goto_7
    if-ge v7, v12, :cond_0

    .line 186
    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v11

    .line 187
    .restart local v11    # "nsUri":Ljava/lang/String;
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:pskc"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixPSKC(Ljava/lang/String;)V

    .line 185
    :cond_11
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 189
    :cond_12
    const-string/jumbo v17, "urn:ietf:params:xml:ns:keyprov:dskpp"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixDSKPP(Ljava/lang/String;)V

    goto :goto_8

    .line 191
    :cond_13
    const-string/jumbo v17, "http://www.w3.org/2000/09/xmldsig#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixDS(Ljava/lang/String;)V

    goto :goto_8

    .line 193
    :cond_14
    const-string/jumbo v17, "http://www.w3.org/2001/04/xmlenc#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixXENC(Ljava/lang/String;)V

    goto :goto_8

    .line 195
    :cond_15
    const-string/jumbo v17, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixPkcs5(Ljava/lang/String;)V

    goto :goto_8

    .line 197
    :cond_16
    const-string/jumbo v17, "http://www.w3.org/2009/xmlsec-derivedkey#"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setPrefixDkey(Ljava/lang/String;)V

    goto :goto_8

    .line 200
    .end local v7    # "i":I
    .end local v11    # "nsUri":Ljava/lang/String;
    .end local v12    # "nsend":I
    .end local v13    # "nsstart":I
    :cond_17
    const-string v17, "KeyPackage"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 203
    new-instance v9, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    .end local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    invoke-direct {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;-><init>()V

    .line 204
    .restart local v9    # "mDSKPPkey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setDSKPPKeyPackage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;)V

    goto/16 :goto_1

    .line 205
    :cond_18
    const-string v17, "KeyContainer"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 207
    new-instance v17, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setVersion(Ljava/lang/String;)V

    .line 209
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMLParser:: KeyContainer Version = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getVersion()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getVersion()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_19

    .line 212
    const/4 v2, 0x1

    .line 214
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setId(Ljava/lang/String;)V

    .line 215
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XMLParser:: KeyContainer Id = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-nez v17, :cond_1a

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "xmlns"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setXmlns(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v17

    if-eqz v17, :cond_1b

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->setKeyContainer(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;)V

    goto/16 :goto_1

    .line 222
    :cond_1b
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 225
    :cond_1c
    const-string v17, "KeyPackage"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v17

    const-string v18, "PSKC"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 230
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseKeyPackageToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    move-result-object v8

    .line 231
    if-eqz v8, :cond_0

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->addKeys(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V

    goto/16 :goto_1

    .line 234
    :cond_1e
    const-string v17, "EncryptionKey"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseEncryptionKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v4

    .line 236
    .local v4, "encryptionKeyType":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setKeyInfoEncryption(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;)V

    goto/16 :goto_1

    .line 237
    .end local v4    # "encryptionKeyType":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    :cond_1f
    const-string v17, "MACMethod"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_20

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseMACMethodToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->setMacMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;)V

    goto/16 :goto_1

    .line 241
    :cond_20
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 242
    :cond_21
    const-string v17, "Signature"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 244
    const-string v17, "Mac"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 245
    new-instance v10, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    invoke-direct {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;-><init>()V

    .line 246
    .local v10, "mMACDskpp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;
    const/16 v17, 0x0

    const-string v18, "MacAlgorithm"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->setAlgorithm(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setMACType(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;)V

    goto/16 :goto_1

    .line 250
    :cond_22
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 251
    .end local v10    # "mMACDskpp":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;
    :cond_23
    const-string v17, "AuthenticationData"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->xmlName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "KeyProvServerFinished"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseAuthenticationCodeMAC(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;)V

    goto/16 :goto_1

    .line 258
    :pswitch_1
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v16

    .line 259
    goto/16 :goto_1

    .line 262
    :pswitch_2
    if-eqz v15, :cond_0

    .line 264
    const-string v17, "Mac"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->setMac(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 268
    :cond_24
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 269
    :cond_25
    const-string/jumbo v17, "serverId"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    if-eqz v17, :cond_26

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->setServerId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    :cond_26
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 283
    :cond_27
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 284
    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public parseEncryptedValueToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 917
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;-><init>()V

    .line 918
    .local v6, "value":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;-><init>()V

    .line 919
    .local v1, "cipher":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;
    const/4 v4, 0x0

    .line 920
    .local v4, "tagname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 922
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 925
    .local v3, "eventType":I
    :goto_0
    const/4 v0, 0x0

    .line 926
    .local v0, "breakWhile":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 928
    packed-switch v3, :pswitch_data_0

    .line 952
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_3

    .line 963
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    :goto_2
    return-object v6

    .line 933
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 934
    goto :goto_1

    .line 937
    :pswitch_2
    if-eqz v4, :cond_0

    .line 939
    const-string v7, "EncryptionMethod"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 940
    const/4 v7, 0x0

    const-string v8, "Algorithm"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->setAlgorithm(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 957
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    :catch_0
    move-exception v2

    .line 958
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse EncryptedType token - XmlPullParserException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 941
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    :cond_1
    :try_start_1
    const-string v7, "CipherValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 942
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->setCipherValue(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->setCipherData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 959
    .end local v0    # "breakWhile":Z
    .end local v3    # "eventType":I
    :catch_1
    move-exception v2

    .line 960
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XMLParser :: failed to parse EncryptedType token - IOException Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 944
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "breakWhile":Z
    .restart local v3    # "eventType":I
    :cond_2
    :try_start_2
    const-string v7, "EncryptedValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 945
    const/4 v0, 0x1

    goto :goto_1

    .line 955
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 956
    goto :goto_0

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public parseEncryptionKeyToken(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 967
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;-><init>()V

    .line 968
    .local v5, "mKeyInfo":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
    const/4 v3, 0x0

    .line 969
    .local v3, "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    const/4 v7, 0x0

    .line 970
    .local v7, "tagname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 972
    .local v8, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "eventType":I
    move-object v4, v3

    .line 975
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .local v4, "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :goto_0
    const/4 v0, 0x0

    .line 976
    .local v0, "breakWhile":Z
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 977
    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v3, v4

    .line 1018
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :goto_1
    if-eqz v0, :cond_8

    .line 1028
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-object v5

    .line 979
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :pswitch_0
    if-nez v7, :cond_1

    move-object v3, v4

    .line 980
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_1

    .line 981
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_1
    const-string v9, "DerivedKey"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 982
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 983
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :try_start_2
    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->setDerivedKey(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1023
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 1024
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse Encryption key token - XmlPullParserException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 984
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_2
    if-eqz v4, :cond_0

    :try_start_3
    const-string v9, "KeyDerivationMethod"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 985
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->parseKeyDerivationMethod(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->setKeyDerivationMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;)V

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_1

    .line 990
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v3, v4

    .line 991
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_1

    .line 994
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :pswitch_2
    if-nez v7, :cond_3

    move-object v3, v4

    .line 995
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_1

    .line 997
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_3
    const-string v9, "X509Certificate"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 998
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;-><init>()V

    .line 999
    .local v6, "mX509Data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    if-eqz v8, :cond_4

    .line 1000
    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->setX509Certificate([B)V

    .line 1001
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V

    :cond_4
    move-object v3, v4

    .line 1003
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_1

    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .end local v6    # "mX509Data":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_5
    const-string v9, "KeyName"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1004
    if-eqz v8, :cond_6

    const-string v9, "Pre-shared-key"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1005
    sget-object v9, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v5, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->setEncryptionKeyType(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V

    .line 1007
    :cond_6
    if-eqz v8, :cond_0

    const-string v9, "Passphrase"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1008
    sget-object v9, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-virtual {v5, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->setEncryptionKeyType(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto/16 :goto_1

    .line 1010
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :cond_7
    const-string v9, "EncryptionKey"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v9

    if-eqz v9, :cond_0

    .line 1011
    const/4 v0, 0x1

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto/16 :goto_1

    .line 1021
    :cond_8
    :try_start_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    move-object v4, v3

    .line 1022
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto/16 :goto_0

    .line 1025
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :catch_1
    move-exception v1

    .line 1026
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse Encryption key token - IOException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1025
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto :goto_4

    .line 1023
    .end local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    .restart local v3    # "mDerivedKey":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;
    goto/16 :goto_3

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public parseKeyDerivationMethod(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1032
    const/4 v3, 0x0

    .line 1033
    .local v3, "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    const/4 v5, 0x0

    .line 1034
    .local v5, "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    const/4 v7, 0x0

    .line 1035
    .local v7, "tagname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1037
    .local v8, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, "eventType":I
    move-object v6, v5

    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .local v6, "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v4, v3

    .line 1040
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .local v4, "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :goto_0
    const/4 v0, 0x0

    .line 1041
    .local v0, "breakWhile":Z
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1042
    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .line 1077
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :goto_1
    if-eqz v0, :cond_7

    .line 1087
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    :goto_2
    return-object v3

    .line 1044
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :pswitch_0
    if-nez v7, :cond_1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .line 1045
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_1

    .line 1046
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_1
    const-string v9, "KeyDerivationMethod"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1047
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1048
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    const/4 v9, 0x0

    :try_start_2
    const-string v10, "Algorithm"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->setAlgorithm(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    goto :goto_1

    .line 1049
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_2
    :try_start_3
    const-string v9, "PBKDF2-params"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1050
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1051
    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    if-eqz v4, :cond_8

    .line 1052
    :try_start_4
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->setPBKDFParams(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_1

    .line 1057
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :pswitch_1
    :try_start_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .line 1058
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_1

    .line 1061
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :pswitch_2
    if-nez v7, :cond_3

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .line 1062
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_1

    .line 1063
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_3
    if-eqz v6, :cond_4

    const-string v9, "Salt"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1064
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->setmSalt(Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_1

    .line 1065
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_4
    if-eqz v6, :cond_5

    const-string v9, "IterationCount"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1066
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->setIterationCount(I)V

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_1

    .line 1067
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_5
    if-eqz v6, :cond_6

    const-string v9, "KeyLength"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1068
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->setKeyLength(I)V

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_1

    .line 1069
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :cond_6
    const-string v9, "KeyDerivationMethod"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v9

    if-eqz v9, :cond_0

    .line 1070
    const/4 v0, 0x1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto/16 :goto_1

    .line 1080
    :cond_7
    :try_start_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v2

    move-object v6, v5

    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v4, v3

    .line 1081
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto/16 :goto_0

    .line 1082
    .end local v0    # "breakWhile":Z
    .end local v2    # "eventType":I
    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_0
    move-exception v1

    .line 1083
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse Key Derivation Method - XmlPullParserException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1084
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 1085
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "XMLParser :: failed to parse Key Derivation Method - IOException Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1084
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v0    # "breakWhile":Z
    .restart local v2    # "eventType":I
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_4

    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    goto :goto_4

    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_4

    .line 1082
    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_3

    .end local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    .restart local v5    # "mParams":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
    goto :goto_3

    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto :goto_3

    .end local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    :cond_8
    move-object v3, v4

    .end local v4    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    .restart local v3    # "mKeyMethod":Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;
    goto/16 :goto_1

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setKeyContainer(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;)V
    .locals 0
    .param p1, "mKeyContainer"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyContainer:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    .line 87
    return-void
.end method

.method public setKeyProvClientHello(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V
    .locals 0
    .param p1, "mKeyProvClientHello"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvClientHello:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;

    .line 62
    return-void
.end method

.method public setKeyProvServerFinished(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 0
    .param p1, "mKeyProvServerFinished"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvServerFinished:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;

    .line 79
    return-void
.end method

.method public setKeyProvTrigger(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V
    .locals 0
    .param p1, "mKeyProvTrigger"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParser;->mKeyProvTrigger:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;

    .line 70
    return-void
.end method
