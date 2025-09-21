.class public final synthetic Lcom/sec/android/app/camera/engine/recordingsession/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/engine/recordingsession/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/o;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/recordingsession/o;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/recordingsession/o;->a:Lcom/sec/android/app/camera/engine/recordingsession/o;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->deleteFileAsync(Ljava/lang/String;)V

    return-void
.end method
