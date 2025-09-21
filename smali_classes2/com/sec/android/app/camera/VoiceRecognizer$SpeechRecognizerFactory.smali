.class Lcom/sec/android/app/camera/VoiceRecognizer$SpeechRecognizerFactory;
.super Ljava/lang/Object;
.source "VoiceRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/VoiceRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpeechRecognizerFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Lcom/samsung/android/speech/SemSpeechRecognizer;
    .locals 1

    new-instance v0, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;-><init>()V

    return-object v0
.end method
