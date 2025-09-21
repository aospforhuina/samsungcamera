.class Le0/m$a;
.super Lu0/g;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/m;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu0/g<",
        "Le0/m$b<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Le0/m;


# direct methods
.method constructor <init>(Le0/m;J)V
    .locals 0

    iput-object p1, p0, Le0/m$a;->e:Le0/m;

    invoke-direct {p0, p2, p3}, Lu0/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Le0/m$b;

    invoke-virtual {p0, p1, p2}, Le0/m$a;->n(Le0/m$b;Ljava/lang/Object;)V

    return-void
.end method

.method protected n(Le0/m$b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/m$b<",
            "TA;>;TB;)V"
        }
    .end annotation

    invoke-virtual {p1}, Le0/m$b;->c()V

    return-void
.end method
