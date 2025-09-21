.class public final synthetic Lp5/v0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lp5/v0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lp5/v0;

    invoke-direct {v0}, Lp5/v0;-><init>()V

    sput-object v0, Lp5/v0;->a:Lp5/v0;

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

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p1}, Lp5/w0;->a(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    return-void
.end method
