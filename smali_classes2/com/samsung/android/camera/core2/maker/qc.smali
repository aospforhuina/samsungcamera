.class public final synthetic Lcom/samsung/android/camera/core2/maker/qc;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/maker/MakerFactory$MakerBuilder;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/maker/qc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/qc;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/maker/qc;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/qc;->a:Lcom/samsung/android/camera/core2/maker/qc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Landroid/content/Context;)Lcom/samsung/android/camera/core2/MakerInterface;
    .locals 0

    new-instance p0, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/ArPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-object p0
.end method
