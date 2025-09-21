.class public final enum Lcom/sec/android/app/camera/interfaces/AspectRatio;
.super Ljava/lang/Enum;
.source "AspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/AspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final ASPECT_RATIO_TOLERANCE:F = 0.0111f

.field public static final enum RATIO_16x10:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_16x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_19DOT3x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_19DOT5x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_19x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_1x1:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_20x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_21x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_4x3:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_5x3:Lcom/sec/android/app/camera/interfaces/AspectRatio;

.field public static final enum RATIO_CIF:Lcom/sec/android/app/camera/interfaces/AspectRatio;


# instance fields
.field private final mRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v1, "RATIO_16x9"

    const/4 v2, 0x0

    const v3, 0x3fe38e39

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v3, "RATIO_4x3"

    const/4 v4, 0x1

    const v5, 0x3faaaaab

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v5, "RATIO_1x1"

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v7, "RATIO_CIF"

    const/4 v8, 0x3

    const v9, 0x3f9c71c7

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_CIF:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v9, "RATIO_18DOT5x9"

    const/4 v10, 0x4

    const v11, 0x40038e39

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v11, "RATIO_19x9"

    const/4 v12, 0x5

    const v13, 0x40071c72

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v13, "RATIO_19DOT3x9"

    const/4 v14, 0x6

    const v15, 0x40093e94

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_19DOT3x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v15, "RATIO_16x10"

    const/4 v14, 0x7

    const v12, 0x3fcccccd    # 1.6f

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_16x10:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 9
    new-instance v12, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v15, "RATIO_19DOT5x9"

    const/16 v14, 0x8

    const v10, 0x400aaaab

    invoke-direct {v12, v15, v14, v10}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v12, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_19DOT5x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 10
    new-instance v10, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v15, "RATIO_20x9"

    const/16 v14, 0x9

    const v8, 0x400e38e4

    invoke-direct {v10, v15, v14, v8}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v10, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 11
    new-instance v8, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v15, "RATIO_21x9"

    const/16 v14, 0xa

    const v6, 0x40155555

    invoke-direct {v8, v15, v14, v6}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v8, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_21x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    .line 12
    new-instance v6, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const-string v15, "RATIO_5x3"

    const/16 v14, 0xb

    const v4, 0x3fd55555

    invoke-direct {v6, v15, v14, v4}, Lcom/sec/android/app/camera/interfaces/AspectRatio;-><init>(Ljava/lang/String;IF)V

    sput-object v6, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_5x3:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/sec/android/app/camera/interfaces/AspectRatio;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 13
    sput-object v4, Lcom/sec/android/app/camera/interfaces/AspectRatio;->$VALUES:[Lcom/sec/android/app/camera/interfaces/AspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/sec/android/app/camera/interfaces/AspectRatio;->mRatio:F

    return-void
.end method

.method public static compareRatio(FF)I
    .locals 2

    sub-float v0, p0, p1

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c35dcc6    # 0.0111f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;
    .locals 7

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/Resolution;->values()[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v5

    if-ne v5, v0, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float p1, v0

    int-to-float v1, p0

    div-float/2addr p1, v1

    .line 6
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->values()[Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 7
    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getRatio()F

    move-result v5

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c35dcc6    # 0.0111f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAspectRatio : argument is invalid - w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ratio="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/AspectRatio;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/AspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/AspectRatio;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AspectRatio;->$VALUES:[Lcom/sec/android/app/camera/interfaces/AspectRatio;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/AspectRatio;

    return-object v0
.end method


# virtual methods
.method public getRatio()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/interfaces/AspectRatio;->mRatio:F

    return p0
.end method
