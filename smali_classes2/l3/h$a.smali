.class final Ll3/h$a;
.super Ll3/h;
.source "VisionOCRLanguage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ll3/h;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/g;)V

    return-void
.end method


# virtual methods
.method public b()Lk4/i;
    .locals 0

    sget-object p0, Lk4/i;->a:Lk4/i;

    return-object p0
.end method
