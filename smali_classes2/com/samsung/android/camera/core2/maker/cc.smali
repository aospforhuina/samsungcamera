.class public final synthetic Lcom/samsung/android/camera/core2/maker/cc;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/maker/MakerFactory$MakerBuilder;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/maker/cc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/cc;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/maker/cc;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/cc;->a:Lcom/samsung/android/camera/core2/maker/cc;

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

    new-instance p0, Lcom/samsung/android/camera/core2/maker/MultiViewVideoMaker;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/MultiViewVideoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-object p0
.end method
