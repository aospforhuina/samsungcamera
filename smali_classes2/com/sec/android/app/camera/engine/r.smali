.class public final synthetic Lcom/sec/android/app/camera/engine/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/engine/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/r;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/r;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/r;->a:Lcom/sec/android/app/camera/engine/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfController;->i(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method
