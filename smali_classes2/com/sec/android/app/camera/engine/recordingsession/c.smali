.class public final synthetic Lcom/sec/android/app/camera/engine/recordingsession/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/engine/recordingsession/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/c;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/recordingsession/c;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/recordingsession/c;->a:Lcom/sec/android/app/camera/engine/recordingsession/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile;->a(Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;Ljava/lang/Integer;)V

    return-void
.end method
