.class public final synthetic Lcom/samsung/android/camera/core2/util/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/util/DngUtils$SetDngMetadataExecutor;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/util/y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/util/y;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/util/y;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/util/y;->a:Lcom/samsung/android/camera/core2/util/y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->v(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method
