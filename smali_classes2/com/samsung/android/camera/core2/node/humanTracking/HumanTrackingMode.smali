.class public final enum Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;
.super Ljava/lang/Enum;
.source "HumanTrackingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

.field public static final enum c:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

.field public static final enum d:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

.field public static final enum f:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

.field public static final enum g:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

.field public static final enum k:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

.field public static final enum l:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

.field public static final enum m:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

.field public static final enum n:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

.field private static final synthetic o:[Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const-string v1, "FACE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->b:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const-string v4, "BODY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->c:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    .line 3
    new-instance v4, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const-string v6, "HAND"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->d:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    .line 4
    new-instance v6, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const-string v8, "SEGMENT"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->f:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    .line 5
    new-instance v8, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const-string v11, "GESTURE"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->g:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    .line 6
    new-instance v11, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const-string v12, "TRS"

    const/4 v13, 0x5

    const/16 v14, 0x20

    invoke-direct {v11, v12, v13, v14}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->k:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    .line 7
    new-instance v12, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const-string v14, "MOUTH"

    const/4 v15, 0x6

    const/16 v13, 0x40

    invoke-direct {v12, v14, v15, v13}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->l:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    .line 8
    new-instance v13, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const-string v14, "FACE2D"

    const/4 v15, 0x7

    const/16 v7, 0x80

    invoke-direct {v13, v14, v15, v7}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->m:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    .line 9
    new-instance v7, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const-string v14, "VEE"

    const/16 v15, 0x100

    invoke-direct {v7, v14, v10, v15}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->n:Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v9

    const/4 v0, 0x4

    aput-object v8, v14, v0

    const/4 v0, 0x5

    aput-object v11, v14, v0

    const/4 v0, 0x6

    aput-object v12, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v7, v14, v10

    .line 10
    sput-object v14, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->o:[Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

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
    iput p3, p0, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->o:[Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->a:I

    return p0
.end method
