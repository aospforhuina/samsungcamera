.class public final synthetic Lcom/samsung/android/camera/core2/util/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/util/DngUtils$SetDngMetadataExecutor;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/util/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/util/u;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/util/u;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/util/u;->a:Lcom/samsung/android/camera/core2/util/u;

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

    invoke-static {p1, p2, p3}, Lcom/samsung/android/camera/core2/util/DngUtils$1;->r(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method
