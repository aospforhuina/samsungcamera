.class public Lcom/samsung/android/ocr/MOCRResult$Char;
.super Ljava/lang/Object;
.source "MOCRResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ocr/MOCRResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Char"
.end annotation


# instance fields
.field public cRect:[Landroid/graphics/Point;

.field public unicode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->unicode:I

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
