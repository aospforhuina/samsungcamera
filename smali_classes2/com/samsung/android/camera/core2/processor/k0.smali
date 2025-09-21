.class public final synthetic Lcom/samsung/android/camera/core2/processor/k0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/processor/k0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/k0;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/k0;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/k0;->a:Lcom/samsung/android/camera/core2/processor/k0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->d(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
