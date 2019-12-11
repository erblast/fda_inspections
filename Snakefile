
rule all:
    input:
        'docs/html/inspection_fda_data_cleaning_mapping.html'
        , 'data/output/final_set_FDA.csv'
        
rule clean:
    input:
        'notebooks/inspection_fda_data_cleaning_mapping.ipynb'
    output:
        'docs/html/inspection_fda_data_cleaning_mapping.html'
    params:
        file='data/input/raw_clinical_investigator_inspection_fc.xls'
        , file2='data/input/raw_clinical_investigator_inspection_da.xls'
        , file_map='data/input/refined_mapping_fda_inspections_code.csv'
        , file_out='data/output/final_set_FDA.csv'

    shell:
        'papermill {input} {input} \
            -p file {params.file} \
            -p file2 {params.file2} \
            -p file_map {params.file_map} \
            -p file_out {params.file_out} \
        && jupyter nbconvert --to html {input} --output ../{output}'
    