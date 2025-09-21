.class public Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;
.super Ljava/lang/Object;
.source "EmailCorrection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;
    }
.end annotation


# static fields
.field private static final DOMAIN_EXTNS:Ljava/lang/String; = "(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static final PAT_EMAIL_BASIC:Ljava/util/regex/Pattern;

.field private static final PAT_EMAIL_COMMA:Ljava/util/regex/Pattern;

.field private static final PAT_EMAIL_SPACE:Ljava/util/regex/Pattern;

.field private static final PAT_SPACE_BW_NAMES:Ljava/util/regex/Pattern;

.field private static final REGEX_EMAIL_BASIC:Ljava/lang/String; = "([a-zA-Z0-9-._]+)(\\s)*@(\\s)*([a-zA-Z0-9]+)(\\s)*(\\.)(\\s)*(\\.)?(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static final REGEX_EMAIL_COMMA:Ljava/lang/String; = "([a-zA-Z0-9-._]+)(\\s)*@(\\s)*([a-zA-Z0-9]+)(\\s)*(,)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static final REGEX_EMAIL_SPACE:Ljava/lang/String; = "([a-zA-Z0-9-._]+)@([a-zA-Z0-9]+)(\\s)(kr)(?=($|\\s))"

.field private static final REGEX_SPACE_BW_NAME:Ljava/lang/String; = "([a-zA-Z0-9]+)(\\s)*(\\.)(\\s)*([a-zA-Z0-9]+)(\\s)*@(\\s)*([a-zA-Z0-9]+)(\\s)*(\\.)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

.field private static final TAG:Ljava/lang/String; = "EmailCorrection"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "([a-zA-Z0-9]+)(\\s)*(\\.)(\\s)*([a-zA-Z0-9]+)(\\s)*@(\\s)*([a-zA-Z0-9]+)(\\s)*(\\.)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->PAT_SPACE_BW_NAMES:Ljava/util/regex/Pattern;

    const-string v0, "([a-zA-Z0-9-._]+)(\\s)*@(\\s)*([a-zA-Z0-9]+)(\\s)*(\\.)(\\s)*(\\.)?(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

    .line 2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->PAT_EMAIL_BASIC:Ljava/util/regex/Pattern;

    const-string v0, "([a-zA-Z0-9-._]+)(\\s)*@(\\s)*([a-zA-Z0-9]+)(\\s)*(,)(\\s)*(com|in|kr|se|org|net|io|gle|mil|tk|cn|de|uk|nl|icu|ru|ir|au|ua|us|fr|es|ca|it|sg|gov|edu|co|ms|at)"

    .line 3
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->PAT_EMAIL_COMMA:Ljava/util/regex/Pattern;

    const-string v0, "([a-zA-Z0-9-._]+)@([a-zA-Z0-9]+)(\\s)(kr)(?=($|\\s))"

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->PAT_EMAIL_SPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3
    :goto_0
    iget v4, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v2, v4, :cond_1

    .line 4
    iget-object v4, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v4, v4, v2

    .line 5
    iget v4, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    add-int v7, v4, v3

    if-ge v7, v0, :cond_0

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int v4, v0, v3

    goto :goto_1

    :cond_1
    move v2, v5

    move v4, v2

    :goto_1
    move v7, v2

    .line 6
    :goto_2
    iget v8, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    if-ge v7, v8, :cond_3

    .line 7
    iget-object v8, p1, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v8, v8, v7

    .line 8
    iget v8, v8, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    add-int v9, v8, v3

    if-ge v9, p0, :cond_2

    add-int/2addr v3, v8

    add-int/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    sub-int v5, p0, v3

    move p1, v5

    move v5, v7

    goto :goto_3

    :cond_3
    move p1, v5

    .line 9
    :goto_3
    sget-object v3, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x6

    new-array v3, v3, [I

    aput v0, v3, v1

    aput p0, v3, v6

    const/4 p0, 0x2

    aput v2, v3, p0

    const/4 p0, 0x3

    aput v5, v3, p0

    const/4 p0, 0x4

    aput v4, v3, p0

    const/4 p0, 0x5

    aput p1, v3, p0

    return-object v3
.end method

.method private static joinWordByDot(Lcom/samsung/android/ocr/MOCRResult$Line;I)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 2
    iget-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-direct {v2}, Lcom/samsung/android/ocr/MOCRResult$Word;-><init>()V

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/graphics/Point;

    .line 4
    iput-object v3, v2, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    .line 5
    iget-object v4, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v5, v4, p1

    add-int/lit8 v6, p1, 0x1

    .line 6
    aget-object v4, v4, v6

    .line 7
    iget-object v6, v5, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    aget-object v7, v6, v1

    aput-object v7, v3, v1

    .line 8
    iget-object v7, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    const/4 v8, 0x1

    aget-object v9, v7, v8

    aput-object v9, v3, v8

    const/4 v9, 0x2

    .line 9
    aget-object v7, v7, v9

    aput-object v7, v3, v9

    const/4 v7, 0x3

    .line 10
    aget-object v6, v6, v7

    aput-object v6, v3, v7

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    .line 12
    iget v6, v5, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    iget v7, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iput v6, v2, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    .line 13
    iget-object v6, v5, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-eqz v6, :cond_1

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v6, v5, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    new-instance v6, Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-direct {v6}, Lcom/samsung/android/ocr/MOCRResult$Char;-><init>()V

    const/16 v7, 0x2e

    .line 17
    iput v7, v6, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    .line 18
    iget-object v7, v5, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    iget v5, v5, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    sub-int/2addr v5, v8

    aget-object v5, v7, v5

    iget-object v5, v5, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    invoke-virtual {v5}, [Landroid/graphics/Point;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/Point;

    iput-object v5, v6, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    .line 19
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v4, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array v4, v1, [Lcom/samsung/android/ocr/MOCRResult$Char;

    .line 21
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object v3, v2, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    .line 22
    array-length v3, v3

    iput v3, v2, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    .line 24
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v9

    .line 25
    :goto_2
    iget v2, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    if-ge p1, v2, :cond_2

    .line 26
    iget-object v2, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v2, v2, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    new-array p1, v1, [Lcom/samsung/android/ocr/MOCRResult$Word;

    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/ocr/MOCRResult$Word;

    iput-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    .line 28
    array-length p1, p1

    iput p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    return-void
.end method

.method private static joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;)V

    return-void
.end method

.method private static joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;)V
    .locals 11

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    .line 5
    :goto_1
    new-instance v4, Lcom/samsung/android/ocr/MOCRResult$Word;

    invoke-direct {v4}, Lcom/samsung/android/ocr/MOCRResult$Word;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/graphics/Point;

    .line 6
    iput-object v5, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    .line 7
    iget-object v6, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v7, v6, p1

    .line 8
    aget-object v6, v6, p2

    .line 9
    iget-object v7, v7, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    aget-object v8, v7, v1

    aput-object v8, v5, v1

    .line 10
    iget-object v6, v6, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    aget-object v8, v6, v3

    aput-object v8, v5, v3

    const/4 v8, 0x2

    .line 11
    aget-object v6, v6, v8

    aput-object v6, v5, v8

    const/4 v6, 0x3

    .line 12
    aget-object v7, v7, v6

    aput-object v7, v5, v6

    const/4 v5, 0x0

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v8, p1

    :goto_2
    if-gt v8, p2, :cond_3

    .line 15
    iget-object v9, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object v9, v9, v8

    .line 16
    iget-object v10, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v10, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    add-float/2addr v5, v10

    if-eqz v2, :cond_2

    .line 18
    iget-object v9, v9, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 19
    :cond_3
    sget-object v8, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    const/4 v9, -0x1

    if-ne p3, v8, :cond_4

    const-string v8, ","

    .line 20
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_4

    const/16 v10, 0x2e

    .line 21
    invoke-virtual {v7, v8, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    if-eqz v2, :cond_4

    .line 22
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/ocr/MOCRResult$Char;

    iput v10, v8, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    .line 23
    :cond_4
    sget-object v8, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;->REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    if-ne p3, v8, :cond_5

    const-string p3, ".."

    .line 24
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-eq p3, v9, :cond_5

    .line 25
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    .line 26
    invoke-interface {v6, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->wordText:Ljava/lang/String;

    sub-int p1, p2, p1

    add-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr v5, p1

    .line 28
    iput v5, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->conf:F

    if-eqz v2, :cond_6

    new-array p1, v1, [Lcom/samsung/android/ocr/MOCRResult$Char;

    .line 29
    invoke-interface {v6, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/ocr/MOCRResult$Char;

    iput-object p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    .line 30
    array-length p1, p1

    iput p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 31
    iput-object p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    .line 32
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, v4, Lcom/samsung/android/ocr/MOCRResult$Word;->charCount:I

    .line 33
    :goto_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v3

    .line 34
    :goto_4
    iget p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    if-ge p2, p1, :cond_7

    .line 35
    iget-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    aget-object p1, p1, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_7
    new-array p1, v1, [Lcom/samsung/android/ocr/MOCRResult$Word;

    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/android/ocr/MOCRResult$Word;

    iput-object p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    .line 37
    array-length p1, p1

    iput p1, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->wordCount:I

    return-void
.end method

.method public static validateEmailLine(Lcom/samsung/android/ocr/MOCRResult$Page;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v0, v0, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 2
    iget-object v4, v4, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    .line 3
    invoke-virtual {v7}, Lcom/samsung/android/ocr/MOCRResult$Line;->getText()Ljava/lang/String;

    move-result-object v8

    .line 4
    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->PAT_SPACE_BW_NAMES:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 5
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    const-string v11, "Post OCR Entity Validation"

    const/4 v12, 0x3

    const/4 v13, 0x2

    const-string v14, "Original line :: "

    if-eqz v10, :cond_1

    .line 6
    sget-object v10, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PAT_SPACE_BW_NAMES match: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v2

    .line 9
    aget v9, v2, v13

    .line 10
    aget v2, v2, v12

    if-ge v9, v2, :cond_0

    .line 11
    invoke-static {v7, v9, v2}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;II)V

    .line 12
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    .line 13
    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->PAT_EMAIL_BASIC:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 14
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 15
    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PAT_EMAIL_BASIC match: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v9

    .line 18
    aget v10, v9, v13

    .line 19
    aget v9, v9, v12

    if-ge v10, v9, :cond_2

    .line 20
    sget-object v15, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;->REPLACE_DOUBLE:Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    invoke-static {v7, v10, v9, v15}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;)V

    .line 21
    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_5

    .line 22
    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->PAT_EMAIL_COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 23
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 24
    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PAT_EMAIL_COMMA match: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {v9, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v9

    .line 27
    aget v10, v9, v13

    .line 28
    aget v9, v9, v12

    if-ge v10, v9, :cond_4

    .line 29
    sget-object v15, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;->REPLACE_COMMA:Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;

    invoke-static {v7, v10, v9, v15}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->joinWords(Lcom/samsung/android/ocr/MOCRResult$Line;IILcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection$RegexActions;)V

    .line 30
    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    move v15, v2

    :goto_3
    if-nez v15, :cond_6

    .line 31
    sget-object v2, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->PAT_EMAIL_SPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 33
    sget-object v9, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PAT_EMAIL_SPACE match: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v2, v7}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->getMatchingIds(Ljava/util/regex/Matcher;Lcom/samsung/android/ocr/MOCRResult$Line;)[I

    move-result-object v2

    .line 36
    aget v8, v2, v13

    .line 37
    aget v2, v2, v12

    add-int/lit8 v10, v8, 0x1

    if-ne v10, v2, :cond_6

    .line 38
    invoke-static {v7, v8}, Lcom/samsung/android/ocr/stride/postocr/entity/EmailCorrection;->joinWordByDot(Lcom/samsung/android/ocr/MOCRResult$Line;I)V

    .line 39
    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method
