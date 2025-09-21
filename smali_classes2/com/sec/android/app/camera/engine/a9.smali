.class public final synthetic Lcom/sec/android/app/camera/engine/a9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/LastContentData;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/a9;->a:Lcom/sec/android/app/camera/engine/LastContentData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/a9;->a:Lcom/sec/android/app/camera/engine/LastContentData;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->P(Lcom/sec/android/app/camera/engine/LastContentData;Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;)V

    return-void
.end method
