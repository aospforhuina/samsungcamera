.class public final enum Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;
.super Ljava/lang/Enum;
.source "DebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/DebugUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DebugMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum d:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum f:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum g:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum k:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum l:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum m:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum n:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum o:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum p:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field public static final enum q:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

.field private static final synthetic r:[Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v1, "CAMERA_LOG_LEVEL"

    const/4 v2, 0x0

    const-string v3, "sec.camera.LOG_LEVEL"

    const-string v4, "D"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->c:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v3, "CAMERA_LOG_TIME"

    const/4 v4, 0x1

    const-string v5, "sec.camera.LOG_TIME"

    const-string v6, "F"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->d:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v5, "CAMERA_PREVIEW_DUMP"

    const/4 v7, 0x2

    const-string v8, "sec.camera.PREVIEW_DUMP"

    invoke-direct {v3, v5, v7, v8, v6}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->f:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v8, "CAMERA_CAPTURE_DUMP"

    const/4 v9, 0x3

    const-string v10, "sec.camera.CAPTURE_DUMP"

    invoke-direct {v5, v8, v9, v10, v6}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->g:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 5
    new-instance v8, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v10, "CAMERA_PPP_DUMP"

    const/4 v11, 0x4

    const-string v12, "sec.camera.PPP_DUMP"

    invoke-direct {v8, v10, v11, v12, v6}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->k:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 6
    new-instance v10, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v12, "CAMERA_PPP_LOGGING"

    const/4 v13, 0x5

    const-string v14, "sec.camera.PPP_LOGGING"

    invoke-direct {v10, v12, v13, v14, v6}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->l:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 7
    new-instance v12, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v14, "CAMERA_PPP_WORKER_DUMP"

    const/4 v15, 0x6

    const-string v13, "sec.camera.PPP_WORKER_DUMP"

    invoke-direct {v12, v14, v15, v13, v6}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->m:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 8
    new-instance v6, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v13, "CAMERA_AIF_DUMP"

    const/4 v14, 0x7

    const-string v15, "sec.camera.AIF_DUMP"

    const-string v11, "0"

    invoke-direct {v6, v13, v14, v15, v11}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->n:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 9
    new-instance v13, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v15, "CAMERA_INJECT_DS_CONDITION"

    const/16 v14, 0x8

    const-string v9, "sec.camera.INJECT_DS_CONDITION"

    const-string v7, "-10"

    invoke-direct {v13, v15, v14, v9, v7}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->o:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 10
    new-instance v9, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v15, "CAMERA_INJECT_DS_EXTRA_INFO"

    const/16 v14, 0x9

    const-string v4, "sec.camera.INJECT_DS_EXTRA_INFO"

    invoke-direct {v9, v15, v14, v4, v7}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->p:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    .line 11
    new-instance v4, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const-string v7, "CAMERA_INJECT_PREVIEW_FRAMES"

    const/16 v15, 0xa

    const-string v14, "sec.camera.INJECT_PREVIEW_FRAMES"

    invoke-direct {v4, v7, v15, v14, v11}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->q:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    const/16 v7, 0xb

    new-array v7, v7, [Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    aput-object v0, v7, v2

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v6, v7, v0

    const/16 v0, 0x8

    aput-object v13, v7, v0

    const/16 v0, 0x9

    aput-object v9, v7, v0

    aput-object v4, v7, v15

    .line 12
    sput-object v7, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->r:[Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->r:[Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
