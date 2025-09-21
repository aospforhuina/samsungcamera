.class public Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;
.super Ljava/lang/Object;
.source "PostProcessCorrection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostProcessCorrection"

.field private static findAndReplaceWords:[Ljava/lang/String;

.field private static slashSurroundingChars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static toReplaceWords:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x2e

    .line 1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->slashSurroundingChars:Ljava/util/List;

    const-string v0, "l\'d"

    const-string v1, "lt"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->findAndReplaceWords:[Ljava/lang/String;

    const-string v0, "I\'d"

    const-string v1, "It"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->toReplaceWords:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctCharI(Lcom/samsung/android/ocr/MOCRResult$Word;Lcom/samsung/android/ocr/MOCRResult$Line;I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    const-string v1, "\\"

    const-string/jumbo v2, "|"

    const-string v3, "I"

    const/16 v4, 0x49

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_b

    .line 2
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v7, v6

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 v0, p2, 0x1

    .line 3
    iget-object v1, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 4
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    sub-int/2addr p2, v6

    if-ltz p2, :cond_6

    .line 7
    iget-object p1, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v0, v5

    :cond_6
    if-eqz v0, :cond_10

    .line 10
    sget-object p1, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->TAG:Ljava/lang/String;

    const-string p2, "Pipe replaced with I - 1 char"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iput-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 12
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz p0, :cond_10

    array-length p1, p0

    if-lez p1, :cond_10

    .line 13
    aget-object p0, p0, v5

    iput v4, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    goto/16 :goto_6

    .line 14
    :pswitch_1
    sget-object p1, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->TAG:Ljava/lang/String;

    const-string p2, "l replaced with I - 1 char"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 16
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz p0, :cond_10

    array-length p1, p0

    if-lez p1, :cond_10

    .line 17
    aget-object p0, p0, v5

    iput v4, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    goto/16 :goto_6

    :pswitch_2
    add-int/lit8 v0, p2, 0x1

    .line 18
    iget-object v1, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v2, v1

    if-ge v0, v2, :cond_8

    .line 19
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->slashSurroundingChars:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v6

    goto :goto_2

    :cond_8
    move v0, v5

    :goto_2
    sub-int/2addr p2, v6

    if-ltz p2, :cond_9

    .line 22
    iget-object p1, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->slashSurroundingChars:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v6, v0

    :cond_a
    :goto_3
    if-eqz v6, :cond_10

    .line 25
    sget-object p1, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->TAG:Ljava/lang/String;

    const-string p2, "\\ replaced with I - 1 char"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 27
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz p0, :cond_10

    array-length p1, p0

    if-lez p1, :cond_10

    .line 28
    aget-object p0, p0, v5

    iput v4, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    goto/16 :goto_6

    .line 29
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 30
    sget-object p1, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->TAG:Ljava/lang/String;

    const-string p2, "Pipe replaced with I - condition 2"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz p1, :cond_10

    array-length p1, p1

    if-lez p1, :cond_10

    .line 33
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v5, p1, :cond_10

    .line 34
    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x7c

    if-ne p1, p2, :cond_c

    .line 35
    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    aget-object p1, p1, v5

    iput v4, p1, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 36
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 37
    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    const/16 p2, 0x5c

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_e

    .line 38
    iget-object v1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 39
    sget-object v1, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->slashSurroundingChars:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v5, v6

    :cond_e
    add-int/lit8 v0, p1, 0x1

    .line 40
    iget-object v1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 41
    iget-object v1, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 42
    sget-object v1, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->slashSurroundingChars:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    move v6, v5

    :goto_5
    if-eqz v6, :cond_10

    .line 43
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v0, p2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 44
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz p0, :cond_10

    array-length p2, p0

    if-lez p2, :cond_10

    .line 45
    aget-object p0, p0, p1

    iput v4, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    :cond_10
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5c -> :sswitch_2
        0x6c -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static process(Lcom/samsung/android/ocr/MOCRResult$Page;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 2
    iget-object v3, v3, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    move v7, v1

    .line 3
    :goto_2
    iget-object v8, v6, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v9, v8

    if-ge v7, v9, :cond_0

    .line 4
    aget-object v8, v8, v7

    .line 5
    invoke-static {v8, v6, v7}, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->correctCharI(Lcom/samsung/android/ocr/MOCRResult$Word;Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    .line 6
    invoke-static {v8}, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->replaceWord(Lcom/samsung/android/ocr/MOCRResult$Word;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static replaceWord(Lcom/samsung/android/ocr/MOCRResult$Word;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->findAndReplaceWords:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/PostProcessCorrection;->toReplaceWords:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz v2, :cond_0

    array-length v2, v2

    if-lez v2, :cond_0

    move v2, v0

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput v4, v3, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
