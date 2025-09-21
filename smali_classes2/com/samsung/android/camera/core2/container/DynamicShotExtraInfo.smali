.class public final enum Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;
.super Ljava/lang/Enum;
.source "DynamicShotExtraInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum c:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum d:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum f:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum g:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum k:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum l:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum m:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum n:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum o:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum p:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field public static final enum q:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

.field private static final synthetic r:[Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->b:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v3, "NEED_PREVIEW_TARGET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->c:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v5, "NEED_LTM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->d:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v7, "NEED_CONT_DET"

    const/4 v8, 0x3

    const/16 v9, 0x10

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->f:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 5
    new-instance v7, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v9, "NEED_FACE_RESTORATION"

    const/4 v10, 0x4

    const/16 v11, 0x20

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->g:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 6
    new-instance v9, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v11, "NEED_SINGLE_UDC"

    const/4 v12, 0x5

    const/16 v13, 0x40

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->k:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 7
    new-instance v11, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v13, "DUAL_BOKEH"

    const/4 v14, 0x6

    const/high16 v15, 0x10000

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->l:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 8
    new-instance v13, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v15, "SINGLE_BOKEH"

    const/4 v14, 0x7

    const/high16 v12, 0x20000

    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->m:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 9
    new-instance v12, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v15, "STAR_EFFECT"

    const/16 v14, 0x8

    const/high16 v10, 0x40000

    invoke-direct {v12, v15, v14, v10}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->n:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 10
    new-instance v10, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v15, "UW_DISTORTION"

    const/16 v14, 0x9

    const/high16 v8, 0x80000

    invoke-direct {v10, v15, v14, v8}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->o:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 11
    new-instance v8, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v15, "FILTER_EFFECT"

    const/16 v14, 0xa

    const/high16 v6, 0x100000

    invoke-direct {v8, v15, v14, v6}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->p:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    .line 12
    new-instance v6, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const-string v15, "EXTRA_POST_PROCESS"

    const/16 v14, 0xb

    const/high16 v4, 0x200000

    invoke-direct {v6, v15, v14, v4}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->q:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

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
    sput-object v4, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->r:[Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->a:I

    return-void
.end method

.method public static synthetic a(ILcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->k(ILcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;)Z

    move-result p0

    return p0
.end method

.method public static b(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->b:Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->values()[Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/container/m;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/container/m;-><init>(I)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic k(ILcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->h()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->r:[Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;

    return-object v0
.end method


# virtual methods
.method public h()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotExtraInfo;->a:I

    return p0
.end method
