.class public final synthetic Lcom/sec/android/app/camera/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/VoiceRecognizer;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/VoiceRecognizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/q;->a:Lcom/sec/android/app/camera/VoiceRecognizer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/q;->a:Lcom/sec/android/app/camera/VoiceRecognizer;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/VoiceRecognizer;->start()V

    return-void
.end method
