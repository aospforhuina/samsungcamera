.class Lk/c$a;
.super Lu/c;
.source "DropShadowKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/c;->f(Lu/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/c<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lu/c;

.field final synthetic e:Lk/c;


# direct methods
.method constructor <init>(Lk/c;Lu/c;)V
    .locals 0

    iput-object p1, p0, Lk/c$a;->e:Lk/c;

    iput-object p2, p0, Lk/c$a;->d:Lu/c;

    invoke-direct {p0}, Lu/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lu/b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lk/c$a;->d(Lu/b;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public d(Lu/b;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/b<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lk/c$a;->d:Lu/c;

    invoke-virtual {p0, p1}, Lu/c;->a(Lu/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const p1, 0x40233333    # 2.55f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
