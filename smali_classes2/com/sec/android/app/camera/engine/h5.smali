.class public final synthetic Lcom/sec/android/app/camera/engine/h5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/snap/camerakit/common/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/engine/h5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/h5;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/h5;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/h5;->a:Lcom/sec/android/app/camera/engine/h5;

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

    check-cast p1, Lcom/snap/camerakit/lenses/LensesComponent$Processor$Configuration;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->n(Lcom/snap/camerakit/lenses/LensesComponent$Processor$Configuration;)V

    return-void
.end method
