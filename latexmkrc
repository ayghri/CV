$aux_dir = "build";
$out_dir = "build";
# Ensure the output directory exists
system("mkdir -p $out_dir") if ! -d $out_dir;

# Optional: Keep the PDF in the root folder rather than inside 'build'
# To do this, we need to move it after compilation.
$post_compile_mode = 'mv %D/%R.pdf cv.pdf';
$pdflatex="pdflatex -interaction=nonstopmode %O %S";

