.class final enum Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;
.super Ljava/lang/Enum;
.source "SecBeautyNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReshapeProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

.field public static final enum c:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

.field public static final enum d:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

.field public static final enum f:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

.field public static final enum g:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

.field public static final enum k:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

.field private static final synthetic l:[Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    const-string v1, "RESHAPE_EYE_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->b:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    const-string v3, "RESHAPE_CHEEK_LEVEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->c:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    const-string v5, "RESHAPE_NOSE_LEVEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->d:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    const-string v7, "RESHAPE_LIP_LEVEL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->f:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    .line 5
    new-instance v7, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    const-string v9, "RESHAPE_CHIN_LEVEL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->g:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    .line 6
    new-instance v9, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    const-string v11, "RESHAPE_AUTO_SUPPORT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->k:Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->l:[Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

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
    iput p3, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->l:[Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/v4/SecBeautyNode$ReshapeProperty;->a:I

    return p0
.end method
