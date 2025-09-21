.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;
.super Ljava/lang/Object;
.source "SEFParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$readAsInt(Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Companion;->readAsInt(Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I

    move-result p0

    return p0
.end method

.method private final readAsInt(Ljava/io/FileInputStream;[BLcom/samsung/android/apex/motionphoto/composer/utils/SEFParser$Tag;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->access$getPayload$cp()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p3}, Ll6/i0;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result p0

    .line 2
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->access$getPayload$cp()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, p3}, Ll6/i0;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_3

    if-ltz p0, :cond_2

    move p1, v0

    :goto_1
    add-int/lit8 p3, v0, 0x1

    .line 3
    aget-byte v1, p2, v0

    mul-int/lit8 v2, v0, 0x8

    shl-int/2addr v1, v2

    add-int/2addr p1, v1

    if-ne v0, p0, :cond_1

    move v0, p1

    goto :goto_2

    :cond_1
    move v0, p3

    goto :goto_1

    :cond_2
    :goto_2
    return v0

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "can\'t read payload("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/SEFParser;->access$getPayload$cp()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1, p3}, Ll6/i0;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
