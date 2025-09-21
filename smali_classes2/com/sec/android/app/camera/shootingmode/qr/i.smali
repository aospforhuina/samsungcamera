.class public final synthetic Lcom/sec/android/app/camera/shootingmode/qr/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/shootingmode/qr/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/qr/i;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/qr/i;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/qr/i;->a:Lcom/sec/android/app/camera/shootingmode/qr/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
