.class final Lcp;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/Object;

.field c:Lcp;

.field private d:I


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lcp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcp;->a:I

    iput p2, p0, Lcp;->d:I

    iput-object p3, p0, Lcp;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcp;->c:Lcp;

    return-void
.end method
